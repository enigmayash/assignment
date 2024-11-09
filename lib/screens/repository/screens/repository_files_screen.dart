import 'package:assignment/screens/repository/models/repository_detail.dart';
import 'package:flutter/material.dart';

class RepositoryFilesScreen extends StatelessWidget {
  const RepositoryFilesScreen({
    super.key,
    required this.repositoryDetail,
  });

  final RepositoryDetail repositoryDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository Files'),
      ),
      body: ListView(
        children: repositoryDetail.files
            .map(
              (k, file) {
                return MapEntry(
                    key,
                    ListTile(
                      title: Text(file.filename),
                      subtitle: Text(file.type),
                    ));
              },
            )
            .values
            .toList() as List<Widget>,
      ),
    );
  }
}
