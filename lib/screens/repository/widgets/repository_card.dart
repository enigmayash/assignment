import 'package:flutter/material.dart';

import '../models/repository_detail.dart';

class RepositoryDetailCard extends StatelessWidget {
  const RepositoryDetailCard({
    super.key,
    required this.repository,
  });

  final RepositoryDetail repository;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Repository URLs
            _buildTitleSection('Repository URLs'),
            _buildUrlField('URL:', repository.url),
            _buildUrlField('HTML URL:', repository.htmlUrl),
            _buildUrlField('Git Pull URL:', repository.gitPullUrl),
            _buildUrlField('Git Push URL:', repository.gitPushUrl),

            const SizedBox(height: 16),

            // Additional Info Section
            _buildTitleSection('Details'),
            _buildDetailField('ID:', repository.id),
            _buildDetailField('Node ID:', repository.nodeId),
            _buildDetailField('Comments URL:', repository.commentsUrl),
            _buildDetailField('Public:', repository.public ? 'Yes' : 'No'),
            _buildDetailField('Comments:', repository.comments.toString()),
            _buildDetailField(
                'Created At:', repository.createdAt.toLocal().toString()),
            _buildDetailField(
                'Updated At:', repository.updatedAt.toLocal().toString()),

            // Description
            const SizedBox(height: 16),
            _buildTitleSection('Description'),
            Text(
              repository.description ?? 'No description available',
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),

            // Owner Info
            const SizedBox(height: 16),
            _buildTitleSection('Owner'),
            _buildOwnerInfo(context, repository.owner),

            // Truncated Status
            const SizedBox(height: 16),
            _buildDetailField(
                'Truncated:', repository.truncated ? 'Yes' : 'No'),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleSection(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      ),
    );
  }

  Widget _buildUrlField(String label, String url) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              url,
              style: const TextStyle(color: Colors.blue),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Flexible(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildOwnerInfo(BuildContext context, Owner owner) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(owner.avatarUrl),
          radius: 20,
        ),
        const SizedBox(width: 10),
        Text(
          owner.login,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
