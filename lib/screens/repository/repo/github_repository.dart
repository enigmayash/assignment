import 'package:assignment/screens/repository/repo/dio_github_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/repository_detail.dart';

final githubRepositoryProvider = Provider<GithubRepository>((ref) {
  
  return DioGithubRepository();
});

abstract class GithubRepository {
  Future<List<RepositoryDetail>> fetchRepositoriesDetails();
  
}
