// lib/gallery.dart
import 'package:assignment/screens/gallery/providers/unsplash_image_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class GalleryTabView extends ConsumerStatefulWidget {
  const GalleryTabView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GalleryTabViewState();
}

class _GalleryTabViewState extends ConsumerState<GalleryTabView> {
  @override
  Widget build(BuildContext context) {
    final imagesAsync = ref.watch(unsplashImageProvider);

    return imagesAsync.when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
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
                  fit: BoxFit.cover,
                  imageUrl: image.urls.small,
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
          child: Text('Error loading images'),
        );
      },
    );
  }
}
