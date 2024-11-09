class UnsplashImage {
  final String id;
  final String createdAt;
  final String updatedAt;
  final int width;
  final int height;
  final String color;
  final String blurHash;
  final int likes;
  final bool likedByUser;
  final String? description;
  final User user;
  final List<Collection> currentUserCollections;
  final Urls urls;
  final Links links;

  UnsplashImage({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.likes,
    required this.likedByUser,
    required this.description,
    required this.user,
    required this.currentUserCollections,
    required this.urls,
    required this.links,
  });

  factory UnsplashImage.fromJson(Map<String, dynamic> json) {
    return UnsplashImage(
      id: json['id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      color: json['color'] as String,
      blurHash: json['blur_hash'] as String,
      likes: json['likes'] as int,
      likedByUser: json['liked_by_user'] as bool,
      description: json['description'] as String?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      currentUserCollections: (json['current_user_collections'] as List)
          .map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
    );
  }
}

class User {
  final String id;
  final String username;
  final String name;
  final String? portfolioUrl;
  final String? bio;
  final String? location;
  final int totalLikes;
  final int totalPhotos;
  final int totalCollections;
  final String? instagramUsername;
  final String? twitterUsername;
  final ProfileImage profileImage;
  final UserLinks links;

  User({
    required this.id,
    required this.username,
    required this.name,
    this.portfolioUrl,
    this.bio,
    this.location,
    required this.totalLikes,
    required this.totalPhotos,
    required this.totalCollections,
    this.instagramUsername,
    this.twitterUsername,
    required this.profileImage,
    required this.links,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      portfolioUrl: json['portfolio_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      totalLikes: json['total_likes'] as int,
      totalPhotos: json['total_photos'] as int,
      totalCollections: json['total_collections'] as int,
      instagramUsername: json['instagram_username'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      profileImage:
          ProfileImage.fromJson(json['profile_image'] as Map<String, dynamic>),
      links: UserLinks.fromJson(json['links'] as Map<String, dynamic>),
    );
  }
}

class ProfileImage {
  final String small;
  final String medium;
  final String large;

  ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  factory ProfileImage.fromJson(Map<String, dynamic> json) {
    return ProfileImage(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
    );
  }
}

class UserLinks {
  final String self;
  final String html;
  final String photos;
  final String likes;
  final String portfolio;

  UserLinks({
    required this.self,
    required this.html,
    required this.photos,
    required this.likes,
    required this.portfolio,
  });

  factory UserLinks.fromJson(Map<String, dynamic> json) {
    return UserLinks(
      self: json['self'] as String,
      html: json['html'] as String,
      photos: json['photos'] as String,
      likes: json['likes'] as String,
      portfolio: json['portfolio'] as String,
    );
  }
}

class Collection {
  final int id;
  final String title;
  final String publishedAt;
  final String lastCollectedAt;
  final String updatedAt;
  final dynamic coverPhoto;
  final dynamic user;

  Collection({
    required this.id,
    required this.title,
    required this.publishedAt,
    required this.lastCollectedAt,
    required this.updatedAt,
    this.coverPhoto,
    this.user,
  });

  factory Collection.fromJson(Map<String, dynamic> json) {
    return Collection(
      id: json['id'] as int,
      title: json['title'] as String,
      publishedAt: json['published_at'] as String,
      lastCollectedAt: json['last_collected_at'] as String,
      updatedAt: json['updated_at'] as String,
      coverPhoto: json['cover_photo'],
      user: json['user'],
    );
  }
}

class Urls {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  factory Urls.fromJson(Map<String, dynamic> json) {
    return Urls(
      raw: json['raw'] as String,
      full: json['full'] as String,
      regular: json['regular'] as String,
      small: json['small'] as String,
      thumb: json['thumb'] as String,
    );
  }
}

class Links {
  final String self;
  final String html;
  final String download;
  final String downloadLocation;

  Links({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      self: json['self'] as String,
      html: json['html'] as String,
      download: json['download'] as String,
      downloadLocation: json['download_location'] as String,
    );
  }
}
