import 'package:assignment/screens/gallery/models/unsplash_image.dart';
import 'package:assignment/screens/gallery/repository/unsplash_repostiory.dart';
import 'package:dio/dio.dart';

class DioUnsplashRepostiory extends UnsplashRepostiory {
  @override
  Future<List<UnsplashImage>> fetchImages() async {
    final response = await Dio().get(
      'https://api.unsplash.com/photos/?client_id=zR8jmmGZBQUUSzwbwSJlrEjNPl3E8lMzuOrcmiRAnyI',
    );

    final List<UnsplashImage> images = [];

    for (final image in response.data) {
      images.add(UnsplashImage.fromJson(image));
    }

    return images;
  }
}
