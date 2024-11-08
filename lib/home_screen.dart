// lib/home_screen.dart
import 'package:flutter/material.dart';
import 'repo_list.dart';
import 'gallery.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GitHub Repo & Image Gallery'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Repo List'),
              Tab(text: 'Gallery'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RepoListScreen(),
            Gallery(),
          ],
        ),
      ),
    );
  }
}