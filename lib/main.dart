import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'repo_list.dart';
import 'gallery.dart';
import 'file_listing_screen.dart';

void main() {
  // Initialize the splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GitHub Repo & Image Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  // Define the routes using GoRouter
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/files',
        builder: (context, state) {
          final repo = state.extra; // Get the repo data passed
          if (repo == null) {
            return const Center(child: Text('No repository data available'));
          }
          return FilesListingScreen(repo: repo);
        },
      ),
    ],
  );

  MyApp({super.key});
}

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
            RepoListScreen(), // Your RepoListScreen
            Gallery(), // You need to implement this screen
          ],
        ),
      ),
    );
  }
}
