// lib/repo_list.dart
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';

class RepoListScreen extends StatefulWidget {
  const RepoListScreen({super.key});

  @override
  _RepoListScreenState createState() => _RepoListScreenState();
}

class _RepoListScreenState extends State<RepoListScreen> {
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Repo List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/'); // Go back to the previous screen
          },
        ),
      ),
      body: ListView.builder(
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
      ),
    );
  }
}
