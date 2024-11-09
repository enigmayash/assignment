import 'package:dio/dio.dart';
import '../models/repository_detail.dart';
import 'github_repository.dart';

class DioGithubRepository extends GithubRepository {
  

  

  @override
  Future<List<RepositoryDetail>> fetchRepositoriesDetails() async {
    final response = await Dio().get('https://api.github.com/gists/public');

       final List<RepositoryDetail> githubRepositoryDetail = [];

    for (final detail in response.data) {
      githubRepositoryDetail.add(RepositoryDetail.fromJson(detail));
    }

    return githubRepositoryDetail;
  }
}