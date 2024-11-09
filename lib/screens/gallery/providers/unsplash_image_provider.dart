import 'package:assignment/screens/gallery/models/unsplash_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/unsplash_repostiory.dart';

final unsplashImageProvider = FutureProvider<List<UnsplashImage>>((ref) async {
  final unsplashRepository = ref.read(unsplashRepositoryProvider);
  final images = await unsplashRepository.fetchImages();

  return images;
});
