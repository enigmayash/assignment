import 'package:assignment/screens/gallery/models/unsplash_image.dart';
import 'package:assignment/screens/repository/models/repository_detail.dart';
import 'package:assignment/screens/repository/screens/repository_files_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:assignment/screens/home/views/repositories_tab_view.dart';
import 'screens/bookmark/screens/bookmark_screen.dart';
import 'screens/gallery/screens/image_preview_screen.dart';
import 'screens/home/screens/home_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

  const MyApp({super.key});
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterNativeSplash.remove();
  }

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

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'files',
            builder: (context, state) {
              final repo = state.extra;
              if (repo == null) {
                return const Center(
                  child: Text(
                    'No repository data available',
                  ),
                );
              }
              return RepositoryFilesScreen(
                repositoryDetail: repo as RepositoryDetail,
              );
            },
          ),
          GoRoute(
            path: 'bookmarks',
            builder: (context, state) => const BookmarkScreen(),
          ),
          GoRoute(
            path: 'full-screen',
            builder: (context, state) {
              final image = state.extra as UnsplashImage;
              return ImagePreviewScreen(
                image: image,
              );
            },
          ),
        ],
      ),
    ],
  );
}
