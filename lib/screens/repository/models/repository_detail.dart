import 'dart:convert';

RepositoryDetail repositoryDetailFromJson(String str) => RepositoryDetail.fromJson(json.decode(str));

String repositoryDetailToJson(RepositoryDetail data) => json.encode(data.toJson());

class RepositoryDetail {
    final String url;
    final String forksUrl;
    final String commitsUrl;
    final String id;
    final String nodeId;
    final String gitPullUrl;
    final String gitPushUrl;
    final String htmlUrl;
    final Map<String, File> files;
    final bool public;
    final DateTime createdAt;
    final DateTime updatedAt;
    final String? description;
    final int comments;
    final dynamic user;
    final String commentsUrl;
    final Owner owner;
    final bool truncated;

    RepositoryDetail({
        required this.url,
        required this.forksUrl,
        required this.commitsUrl,
        required this.id,
        required this.nodeId,
        required this.gitPullUrl,
        required this.gitPushUrl,
        required this.htmlUrl,
        required this.files,
        required this.public,
        required this.createdAt,
        required this.updatedAt,
        required this.description,
        required this.comments,
        required this.user,
        required this.commentsUrl,
        required this.owner,
        required this.truncated,
    });

    factory RepositoryDetail.fromJson(Map<String, dynamic> json) => RepositoryDetail(
        url: json["url"],
        forksUrl: json["forks_url"],
        commitsUrl: json["commits_url"],
        id: json["id"],
        nodeId: json["node_id"],
        gitPullUrl: json["git_pull_url"],
        gitPushUrl: json["git_push_url"],
        htmlUrl: json["html_url"],
        files: Map.from(json["files"]).map((k, v) => MapEntry<String, File>(k, File.fromJson(v))),
        public: json["public"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        description: json["description"],
        comments: json["comments"],
        user: json["user"],
        commentsUrl: json["comments_url"],
        owner: Owner.fromJson(json["owner"]),
        truncated: json["truncated"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "forks_url": forksUrl,
        "commits_url": commitsUrl,
        "id": id,
        "node_id": nodeId,
        "git_pull_url": gitPullUrl,
        "git_push_url": gitPushUrl,
        "html_url": htmlUrl,
        "files": Map.from(files).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "public": public,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "description": description,
        "comments": comments,
        "user": user,
        "comments_url": commentsUrl,
        "owner": owner.toJson(),
        "truncated": truncated,
    };
}

class File {
    final String filename;
    final String type;
    final String? language;
    final String rawUrl;
    final int size;

    File({
        required this.filename,
        required this.type,
        required this.language,
        required this.rawUrl,
        required this.size,
    });

    factory File.fromJson(Map<String, dynamic> json) => File(
        filename: json["filename"],
        type: json["type"],
        language: json["language"],
        rawUrl: json["raw_url"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "filename": filename,
        "type": type,
        "language": language,
        "raw_url": rawUrl,
        "size": size,
    };
}

class Owner {
    final String login;
    final int id;
    final String nodeId;
    final String avatarUrl;
    final String gravatarId;
    final String url;
    final String htmlUrl;
    final String followersUrl;
    final String followingUrl;
    final String gistsUrl;
    final String starredUrl;
    final String subscriptionsUrl;
    final String organizationsUrl;
    final String reposUrl;
    final String eventsUrl;
    final String receivedEventsUrl;
    final String type;
    final String userViewType;
    final bool siteAdmin;

    Owner({
        required this.login,
        required this.id,
        required this.nodeId,
        required this.avatarUrl,
        required this.gravatarId,
        required this.url,
        required this.htmlUrl,
        required this.followersUrl,
        required this.followingUrl,
        required this.gistsUrl,
        required this.starredUrl,
        required this.subscriptionsUrl,
        required this.organizationsUrl,
        required this.reposUrl,
        required this.eventsUrl,
        required this.receivedEventsUrl,
        required this.type,
        required this.userViewType,
        required this.siteAdmin,
    });

    factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: json["login"],
        id: json["id"],
        nodeId: json["node_id"],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: json["following_url"],
        gistsUrl: json["gists_url"],
        starredUrl: json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: json["events_url"],
        receivedEventsUrl: json["received_events_url"],
        type: json["type"],
        userViewType: json["user_view_type"],
        siteAdmin: json["site_admin"],
    );

    Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrl,
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrl,
        "received_events_url": receivedEventsUrl,
        "type": type,
        "user_view_type": userViewType,
        "site_admin": siteAdmin,
    };
}