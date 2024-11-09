import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:assignment/screens/repository/providers/repository_provider.dart';

class RepositoryDetailScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repositoryDetailAsyncValue = ref.watch(repositoriesDetailsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository Details'),
      ),
      body: repositoryDetailAsyncValue.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final repositoryDetail = data[index];
              return Container(
                child: Column(
                  children: [
                    Text('description' + (repositoryDetail.description ?? 'No description available')),
                    Text('created' + repositoryDetail.createdAt.toString()),
                  ],
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
