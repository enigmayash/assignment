import 'package:assignment/screens/bookmark/repositories/bookmark_repository.dart';

import '../../../database/database.dart';
import '../../gallery/models/unsplash_image.dart';

class DriftBookmarkRepository extends BookmarkRepository {
  DriftBookmarkRepository(
    this._db,
  );
  final AppDatabase _db;

  @override
  Future<void> addBookmark(UnsplashImage image) => _db.addBookmark(image);

  @override
  Future<void> removeBookmark(String imageId) => _db.removeBookmark(imageId);

  @override
  Future<bool> isBookmarked(String imageId) => _db.isBookmarked(imageId);

  @override
  Stream<List<UnsplashImage>> watchBookmarks() => _db.watchBookmarks();
}
