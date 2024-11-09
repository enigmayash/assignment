import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../gallery/models/unsplash_image.dart';
import '../providers/bookmark_controller_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class BookmarkScreen extends ConsumerWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarksAsync = ref.watch(bookmarksControllerProvider);

    return bookmarksAsync.when(
      data: (List<UnsplashImage> data) {
        return Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              final image = data[index];
              return GestureDetector(
                onTap: () {
                  // Navigate to full-screen image
                  context.go(
                    '/full-screen',
                    extra: image,
                  );
                },
                child: CachedNetworkImage(
                  imageUrl: image.urls.small,
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                  ),
                ),
              );
            },
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      error: (error, stack) {
        print(error);
        print(stack);
        return const Center(
          child: Text('Error loading bookmarks.'),
        );
      },
    );
  }
}
