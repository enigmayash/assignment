import 'package:flutter/material.dart';

import '../models/repository_detail.dart';

class OwnerInfoDialog extends StatelessWidget {
  const OwnerInfoDialog({
    super.key,
    required this.owner,
  });
  final Owner owner;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Avatar and Username
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(owner.avatarUrl),
                      radius: 40,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      owner.login,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (owner.siteAdmin)
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Chip(
                          label: Text('Site Admin'),
                          backgroundColor: Colors.redAccent,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Basic Information
              _buildSectionTitle('Basic Information'),
              _buildDetailRow('ID', owner.id.toString()),
              _buildDetailRow('Node ID', owner.nodeId),
              _buildDetailRow('Type', owner.type),
              _buildDetailRow('User View Type', owner.userViewType),

              const SizedBox(height: 20),

              // Links Section
              _buildSectionTitle('Links'),
              _buildUrlRow('Profile URL', owner.htmlUrl),
              _buildUrlRow('Followers URL', owner.followersUrl),
              _buildUrlRow('Following URL', owner.followingUrl),
              _buildUrlRow('Gists URL', owner.gistsUrl),
              _buildUrlRow('Starred URL', owner.starredUrl),
              _buildUrlRow('Subscriptions URL', owner.subscriptionsUrl),
              _buildUrlRow('Organizations URL', owner.organizationsUrl),
              _buildUrlRow('Repos URL', owner.reposUrl),
              _buildUrlRow('Events URL', owner.eventsUrl),
              _buildUrlRow('Received Events URL', owner.receivedEventsUrl),

              const SizedBox(height: 20),

              // Close Button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Close',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  Widget _buildUrlRow(String label, String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Add your URL launcher logic here
              },
              child: Text(
                url,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
