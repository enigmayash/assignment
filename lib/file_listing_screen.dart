import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class FilesListingScreen extends StatefulWidget {
  final dynamic repo;

  const FilesListingScreen({super.key, required this.repo});

  @override
  _FilesListingScreenState createState() => _FilesListingScreenState();
}

class _FilesListingScreenState extends State<FilesListingScreen> {
  Map<String, dynamic> files = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFiles();
  }

  Future<void> fetchFiles() async {
    try {
      final response = await Dio().get(widget.repo['url']);
      setState(() {
        files = response.data['files'];
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Files in Gist: ${widget.repo['description'] ?? 'No Description'}'),
      ),
      body: ListView.builder(
        itemCount: files.length,
        itemBuilder: (context, index) {
          final fileKey = files.keys.elementAt(index);
          final file = files[fileKey];
          return ListTile(
            title: Text(fileKey),
            subtitle: Text('Type: ${file['type'] ?? 'N/A'}'),
            onTap: () {
              // Handle file tap (e.g., open file details or download)
            },
          );
        },
      ),
    );
  }
}