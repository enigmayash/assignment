import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repo/github_repository.dart';
import '../models/repository_detail.dart';

final repositoriesDetailsProvider =
    FutureProvider<List<RepositoryDetail>>((ref) async {
  final repository = ref.read(githubRepositoryProvider);

  return await repository.fetchRepositoriesDetails();
});
