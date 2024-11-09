import 'package:assignment/screens/gallery/repository/dio_unsplash_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/unsplash_image.dart';

final unsplashRepositoryProvider = Provider<UnsplashRepostiory>((ref) {
  return DioUnsplashRepostiory();
});

abstract class UnsplashRepostiory {
  Future<List<UnsplashImage>> fetchImages();
}
