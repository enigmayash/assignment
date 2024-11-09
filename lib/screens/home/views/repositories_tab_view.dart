import 'package:assignment/screens/repository/models/repository_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:assignment/screens/repository/providers/repository_provider.dart';
import 'package:go_router/go_router.dart';

import '../../repository/widgets/owner_information_dialog.dart';
import '../../repository/widgets/repository_card.dart';

class RepositoriesTabView extends ConsumerWidget {
  const RepositoriesTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repositoryDetailAsyncValue = ref.watch(repositoriesDetailsProvider);

    return repositoryDetailAsyncValue.when(
      data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final repositoryDetail = data[index];
            return InkWell(
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return OwnerInfoDialog(
                      owner: repositoryDetail.owner,
                    );
                  },
                );
              },
              onTap: () {
                // Navigate to full-screen image
                context.go(
                  '/files',
                  extra: repositoryDetail,
                );
              },
              child: RepositoryDetailCard(
                repository: repositoryDetail,
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        print(error);
        print(stack);
        return Center(child: Text('Error: $error'));
      },
    );
  }
}
