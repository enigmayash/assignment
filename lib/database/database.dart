// database/database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../screens/gallery/models/unsplash_image.dart';

part 'database.g.dart';

class BookmarkedImages extends Table {
  TextColumn get id => text()();
  TextColumn get createdAt => text()();
  TextColumn get updatedAt => text()();
  IntColumn get width => integer()();
  IntColumn get height => integer()();
  TextColumn get color => text()();
  TextColumn get blurHash => text()();
  IntColumn get likes => integer()();
  BoolColumn get likedByUser => boolean()();
  TextColumn get description => text().nullable()();

  // User related fields
  TextColumn get userId => text()();
  TextColumn get username => text()();
  TextColumn get userProfileImage => text()(); // Store the medium size URL

  // URLs
  TextColumn get rawUrl => text()();
  TextColumn get fullUrl => text()();
  TextColumn get regularUrl => text()();
  TextColumn get smallUrl => text()();
  TextColumn get thumbUrl => text()();

  // Bookmark specific fields
  DateTimeColumn get bookmarkedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'bookmarks.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [BookmarkedImages])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Convert UnsplashImage to BookmarkedImagesCompanion
  BookmarkedImagesCompanion unsplashImageToCompanion(UnsplashImage image) {
    return BookmarkedImagesCompanion(
      id: Value(image.id),
      createdAt: Value(image.createdAt),
      updatedAt: Value(image.updatedAt),
      width: Value(image.width),
      height: Value(image.height),
      color: Value(image.color),
      blurHash: Value(image.blurHash),
      likes: Value(image.likes),
      likedByUser: Value(image.likedByUser),
      description: Value(image.description),
      userId: Value(image.user.id),
      username: Value(image.user.username),
      userProfileImage: Value(image.user.profileImage.medium),
      rawUrl: Value(image.urls.raw),
      fullUrl: Value(image.urls.full),
      regularUrl: Value(image.urls.regular),
      smallUrl: Value(image.urls.small),
      thumbUrl: Value(image.urls.thumb),
      bookmarkedAt: Value(DateTime.now()),
    );
  }

  // Convert BookmarkedImage to UnsplashImage
  UnsplashImage bookmarkedImageToUnsplash(BookmarkedImage bookmark) {
    return UnsplashImage(
      id: bookmark.id,
      createdAt: bookmark.createdAt,
      updatedAt: bookmark.updatedAt,
      width: bookmark.width,
      height: bookmark.height,
      color: bookmark.color,
      blurHash: bookmark.blurHash,
      likes: bookmark.likes,
      likedByUser: bookmark.likedByUser,
      description: bookmark.description ?? '',
      user: User(
        id: bookmark.userId,
        username: bookmark.username,
        name: bookmark
            .username, // Using username as name since we don't store name
        profileImage: ProfileImage(
          small: bookmark.userProfileImage,
          medium: bookmark.userProfileImage,
          large: bookmark.userProfileImage,
        ),
        totalLikes: 0,
        totalPhotos: 0,
        totalCollections: 0,
        links: UserLinks(
          self: '',
          html: '',
          photos: '',
          likes: '',
          portfolio: '',
        ),
      ),
      currentUserCollections: [],
      urls: Urls(
        raw: bookmark.rawUrl,
        full: bookmark.fullUrl,
        regular: bookmark.regularUrl,
        small: bookmark.smallUrl,
        thumb: bookmark.thumbUrl,
      ),
      links: Links(
        self: '',
        html: '',
        download: '',
        downloadLocation: '',
      ),
    );
  }

  // CRUD Operations
  Future<void> addBookmark(UnsplashImage image) {
    return into(bookmarkedImages).insert(
      unsplashImageToCompanion(image),
      mode: InsertMode.replace,
    );
  }

  Future<void> removeBookmark(String imageId) {
    return (delete(bookmarkedImages)..where((tbl) => tbl.id.equals(imageId)))
        .go();
  }

  Future<bool> isBookmarked(String imageId) async {
    final count = await (select(bookmarkedImages)
          ..where((tbl) => tbl.id.equals(imageId)))
        .get();
    return count.isNotEmpty;
  }

  Stream<List<UnsplashImage>> watchBookmarks() {
    final query = select(bookmarkedImages)
      ..orderBy([
        (t) => OrderingTerm(expression: t.bookmarkedAt, mode: OrderingMode.desc)
      ]);

    return query.watch().map(
          (bookmarks) => bookmarks.map(bookmarkedImageToUnsplash).toList(),
        );
  }
}
