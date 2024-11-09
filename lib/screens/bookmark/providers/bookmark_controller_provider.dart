import 'package:assignment/screens/bookmark/repositories/bookmark_repository.dart';
import 'package:assignment/screens/gallery/models/unsplash_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookmarksControllerProvider =
    StreamNotifierProvider<BookmarkNotifier, List<UnsplashImage>>(
        BookmarkNotifier.new);

class BookmarkNotifier extends StreamNotifier<List<UnsplashImage>> {
  BookmarkRepository get repository => ref.read(bookmarkRepositoryProvider);

  @override
  Stream<List<UnsplashImage>> build() async* {
    yield* repository.watchBookmarks();
  }

  Future<void> toggleBookmark(UnsplashImage image) async {
    final isBookmarked = await repository.isBookmarked(image.id);
    if (isBookmarked) {
      await repository.removeBookmark(image.id);
    } else {
      await repository.addBookmark(image);
    }
  }
}
