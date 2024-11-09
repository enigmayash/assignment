import 'package:assignment/screens/gallery/models/unsplash_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../bookmark/providers/bookmark_controller_provider.dart';

class ImagePreviewScreen extends ConsumerWidget {
  const ImagePreviewScreen({
    super.key,
    required this.image,
  });

  final UnsplashImage image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isBookmarked =
        ref.watch(bookmarksControllerProvider).valueOrNull?.any(
                  (element) => element.id == image.id,
                ) ??
            false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Screen Image'),
        actions: [
          IconButton(
            icon: Icon(
              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
            ),
            onPressed: () async {
              await ref
                  .read(bookmarksControllerProvider.notifier)
                  .toggleBookmark(image);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    isBookmarked
                        ? 'Removed from bookmarks'
                        : 'Added to bookmarks',
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: InteractiveViewer(
              child: Image.network(image.urls.regular),
            ),
          ),
        ),
      ),
    );
  }
}
