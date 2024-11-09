import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';

class RepoListTabView extends StatefulWidget {
  const RepoListTabView({super.key});

  @override
  RepoListTabViewState createState() => RepoListTabViewState();
}

class RepoListTabViewState extends State<RepoListTabView> {
  List<dynamic> repos = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchRepos();
  }

  Future<void> fetchRepos() async {
    try {
      final response = await Dio().get('https://api.github.com/gists/public');
      setState(() {
        repos = response.data;
        isLoading = false;
      });
    } catch (e) {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: repos.length,
      itemBuilder: (context, index) {
        final repo = repos[index];
        return GestureDetector(
          onTap: () {
            if (repo != null) {
              print('Navigating to /files with repo: $repo');
              context.go('/files', extra: repo);
            } else {
              print('Repo is null');
            }
          },
          onLongPress: () {
            // Show owner information in a popup
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Owner Information'),
                content: Text('Owner: ${repo['owner']['login']}'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          },
          child: ListTile(
            title: Text(repo['description'] ?? 'No Description'),
            subtitle: Text('Created: ${repo['created_at']}'),
          ),
        );
      },
    );
  }
}
