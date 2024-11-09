import 'package:flutter/material.dart';

import '../views/gallery_tab_view.dart';
import '../../bookmark/screens/bookmark_screen.dart';
import '../views/repositories_tab_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GitHub Repo & Image Gallery'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Repositories'),
              Tab(text: 'Gallery'),
              Tab(text: 'Bookmarks'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            RepositoriesTabView(),
            GalleryTabView(),
            BookmarkScreen(),
          ],
        ),
      ),
    );
  }
}
