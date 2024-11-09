import 'package:assignment/screens/bookmark/repositories/drift_bookmark_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../database/database_provider.dart';
import '../../gallery/models/unsplash_image.dart';

final bookmarkRepositoryProvider = Provider<BookmarkRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return DriftBookmarkRepository(db);
});

abstract class BookmarkRepository {
  Future<void> addBookmark(UnsplashImage image);

  Future<void> removeBookmark(String imageId);

  Future<bool> isBookmarked(String imageId);

  Stream<List<UnsplashImage>> watchBookmarks();
}
