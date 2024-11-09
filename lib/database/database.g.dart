// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $BookmarkedImagesTable extends BookmarkedImages
    with TableInfo<$BookmarkedImagesTable, BookmarkedImage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarkedImagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
      'width', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _blurHashMeta =
      const VerificationMeta('blurHash');
  @override
  late final GeneratedColumn<String> blurHash = GeneratedColumn<String>(
      'blur_hash', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _likesMeta = const VerificationMeta('likes');
  @override
  late final GeneratedColumn<int> likes = GeneratedColumn<int>(
      'likes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _likedByUserMeta =
      const VerificationMeta('likedByUser');
  @override
  late final GeneratedColumn<bool> likedByUser = GeneratedColumn<bool>(
      'liked_by_user', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("liked_by_user" IN (0, 1))'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userProfileImageMeta =
      const VerificationMeta('userProfileImage');
  @override
  late final GeneratedColumn<String> userProfileImage = GeneratedColumn<String>(
      'user_profile_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _rawUrlMeta = const VerificationMeta('rawUrl');
  @override
  late final GeneratedColumn<String> rawUrl = GeneratedColumn<String>(
      'raw_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullUrlMeta =
      const VerificationMeta('fullUrl');
  @override
  late final GeneratedColumn<String> fullUrl = GeneratedColumn<String>(
      'full_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _regularUrlMeta =
      const VerificationMeta('regularUrl');
  @override
  late final GeneratedColumn<String> regularUrl = GeneratedColumn<String>(
      'regular_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _smallUrlMeta =
      const VerificationMeta('smallUrl');
  @override
  late final GeneratedColumn<String> smallUrl = GeneratedColumn<String>(
      'small_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _thumbUrlMeta =
      const VerificationMeta('thumbUrl');
  @override
  late final GeneratedColumn<String> thumbUrl = GeneratedColumn<String>(
      'thumb_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bookmarkedAtMeta =
      const VerificationMeta('bookmarkedAt');
  @override
  late final GeneratedColumn<DateTime> bookmarkedAt = GeneratedColumn<DateTime>(
      'bookmarked_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        width,
        height,
        color,
        blurHash,
        likes,
        likedByUser,
        description,
        userId,
        username,
        userProfileImage,
        rawUrl,
        fullUrl,
        regularUrl,
        smallUrl,
        thumbUrl,
        bookmarkedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarked_images';
  @override
  VerificationContext validateIntegrity(Insertable<BookmarkedImage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('blur_hash')) {
      context.handle(_blurHashMeta,
          blurHash.isAcceptableOrUnknown(data['blur_hash']!, _blurHashMeta));
    } else if (isInserting) {
      context.missing(_blurHashMeta);
    }
    if (data.containsKey('likes')) {
      context.handle(
          _likesMeta, likes.isAcceptableOrUnknown(data['likes']!, _likesMeta));
    } else if (isInserting) {
      context.missing(_likesMeta);
    }
    if (data.containsKey('liked_by_user')) {
      context.handle(
          _likedByUserMeta,
          likedByUser.isAcceptableOrUnknown(
              data['liked_by_user']!, _likedByUserMeta));
    } else if (isInserting) {
      context.missing(_likedByUserMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('user_profile_image')) {
      context.handle(
          _userProfileImageMeta,
          userProfileImage.isAcceptableOrUnknown(
              data['user_profile_image']!, _userProfileImageMeta));
    } else if (isInserting) {
      context.missing(_userProfileImageMeta);
    }
    if (data.containsKey('raw_url')) {
      context.handle(_rawUrlMeta,
          rawUrl.isAcceptableOrUnknown(data['raw_url']!, _rawUrlMeta));
    } else if (isInserting) {
      context.missing(_rawUrlMeta);
    }
    if (data.containsKey('full_url')) {
      context.handle(_fullUrlMeta,
          fullUrl.isAcceptableOrUnknown(data['full_url']!, _fullUrlMeta));
    } else if (isInserting) {
      context.missing(_fullUrlMeta);
    }
    if (data.containsKey('regular_url')) {
      context.handle(
          _regularUrlMeta,
          regularUrl.isAcceptableOrUnknown(
              data['regular_url']!, _regularUrlMeta));
    } else if (isInserting) {
      context.missing(_regularUrlMeta);
    }
    if (data.containsKey('small_url')) {
      context.handle(_smallUrlMeta,
          smallUrl.isAcceptableOrUnknown(data['small_url']!, _smallUrlMeta));
    } else if (isInserting) {
      context.missing(_smallUrlMeta);
    }
    if (data.containsKey('thumb_url')) {
      context.handle(_thumbUrlMeta,
          thumbUrl.isAcceptableOrUnknown(data['thumb_url']!, _thumbUrlMeta));
    } else if (isInserting) {
      context.missing(_thumbUrlMeta);
    }
    if (data.containsKey('bookmarked_at')) {
      context.handle(
          _bookmarkedAtMeta,
          bookmarkedAt.isAcceptableOrUnknown(
              data['bookmarked_at']!, _bookmarkedAtMeta));
    } else if (isInserting) {
      context.missing(_bookmarkedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BookmarkedImage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookmarkedImage(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}width'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      blurHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}blur_hash'])!,
      likes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}likes'])!,
      likedByUser: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}liked_by_user'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      userProfileImage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}user_profile_image'])!,
      rawUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}raw_url'])!,
      fullUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_url'])!,
      regularUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}regular_url'])!,
      smallUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}small_url'])!,
      thumbUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumb_url'])!,
      bookmarkedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}bookmarked_at'])!,
    );
  }

  @override
  $BookmarkedImagesTable createAlias(String alias) {
    return $BookmarkedImagesTable(attachedDatabase, alias);
  }
}

class BookmarkedImage extends DataClass implements Insertable<BookmarkedImage> {
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
  final String userId;
  final String username;
  final String userProfileImage;
  final String rawUrl;
  final String fullUrl;
  final String regularUrl;
  final String smallUrl;
  final String thumbUrl;
  final DateTime bookmarkedAt;
  const BookmarkedImage(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.width,
      required this.height,
      required this.color,
      required this.blurHash,
      required this.likes,
      required this.likedByUser,
      this.description,
      required this.userId,
      required this.username,
      required this.userProfileImage,
      required this.rawUrl,
      required this.fullUrl,
      required this.regularUrl,
      required this.smallUrl,
      required this.thumbUrl,
      required this.bookmarkedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    map['width'] = Variable<int>(width);
    map['height'] = Variable<int>(height);
    map['color'] = Variable<String>(color);
    map['blur_hash'] = Variable<String>(blurHash);
    map['likes'] = Variable<int>(likes);
    map['liked_by_user'] = Variable<bool>(likedByUser);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['user_id'] = Variable<String>(userId);
    map['username'] = Variable<String>(username);
    map['user_profile_image'] = Variable<String>(userProfileImage);
    map['raw_url'] = Variable<String>(rawUrl);
    map['full_url'] = Variable<String>(fullUrl);
    map['regular_url'] = Variable<String>(regularUrl);
    map['small_url'] = Variable<String>(smallUrl);
    map['thumb_url'] = Variable<String>(thumbUrl);
    map['bookmarked_at'] = Variable<DateTime>(bookmarkedAt);
    return map;
  }

  BookmarkedImagesCompanion toCompanion(bool nullToAbsent) {
    return BookmarkedImagesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      width: Value(width),
      height: Value(height),
      color: Value(color),
      blurHash: Value(blurHash),
      likes: Value(likes),
      likedByUser: Value(likedByUser),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      userId: Value(userId),
      username: Value(username),
      userProfileImage: Value(userProfileImage),
      rawUrl: Value(rawUrl),
      fullUrl: Value(fullUrl),
      regularUrl: Value(regularUrl),
      smallUrl: Value(smallUrl),
      thumbUrl: Value(thumbUrl),
      bookmarkedAt: Value(bookmarkedAt),
    );
  }

  factory BookmarkedImage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookmarkedImage(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      width: serializer.fromJson<int>(json['width']),
      height: serializer.fromJson<int>(json['height']),
      color: serializer.fromJson<String>(json['color']),
      blurHash: serializer.fromJson<String>(json['blurHash']),
      likes: serializer.fromJson<int>(json['likes']),
      likedByUser: serializer.fromJson<bool>(json['likedByUser']),
      description: serializer.fromJson<String?>(json['description']),
      userId: serializer.fromJson<String>(json['userId']),
      username: serializer.fromJson<String>(json['username']),
      userProfileImage: serializer.fromJson<String>(json['userProfileImage']),
      rawUrl: serializer.fromJson<String>(json['rawUrl']),
      fullUrl: serializer.fromJson<String>(json['fullUrl']),
      regularUrl: serializer.fromJson<String>(json['regularUrl']),
      smallUrl: serializer.fromJson<String>(json['smallUrl']),
      thumbUrl: serializer.fromJson<String>(json['thumbUrl']),
      bookmarkedAt: serializer.fromJson<DateTime>(json['bookmarkedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'width': serializer.toJson<int>(width),
      'height': serializer.toJson<int>(height),
      'color': serializer.toJson<String>(color),
      'blurHash': serializer.toJson<String>(blurHash),
      'likes': serializer.toJson<int>(likes),
      'likedByUser': serializer.toJson<bool>(likedByUser),
      'description': serializer.toJson<String?>(description),
      'userId': serializer.toJson<String>(userId),
      'username': serializer.toJson<String>(username),
      'userProfileImage': serializer.toJson<String>(userProfileImage),
      'rawUrl': serializer.toJson<String>(rawUrl),
      'fullUrl': serializer.toJson<String>(fullUrl),
      'regularUrl': serializer.toJson<String>(regularUrl),
      'smallUrl': serializer.toJson<String>(smallUrl),
      'thumbUrl': serializer.toJson<String>(thumbUrl),
      'bookmarkedAt': serializer.toJson<DateTime>(bookmarkedAt),
    };
  }

  BookmarkedImage copyWith(
          {String? id,
          String? createdAt,
          String? updatedAt,
          int? width,
          int? height,
          String? color,
          String? blurHash,
          int? likes,
          bool? likedByUser,
          Value<String?> description = const Value.absent(),
          String? userId,
          String? username,
          String? userProfileImage,
          String? rawUrl,
          String? fullUrl,
          String? regularUrl,
          String? smallUrl,
          String? thumbUrl,
          DateTime? bookmarkedAt}) =>
      BookmarkedImage(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        width: width ?? this.width,
        height: height ?? this.height,
        color: color ?? this.color,
        blurHash: blurHash ?? this.blurHash,
        likes: likes ?? this.likes,
        likedByUser: likedByUser ?? this.likedByUser,
        description: description.present ? description.value : this.description,
        userId: userId ?? this.userId,
        username: username ?? this.username,
        userProfileImage: userProfileImage ?? this.userProfileImage,
        rawUrl: rawUrl ?? this.rawUrl,
        fullUrl: fullUrl ?? this.fullUrl,
        regularUrl: regularUrl ?? this.regularUrl,
        smallUrl: smallUrl ?? this.smallUrl,
        thumbUrl: thumbUrl ?? this.thumbUrl,
        bookmarkedAt: bookmarkedAt ?? this.bookmarkedAt,
      );
  BookmarkedImage copyWithCompanion(BookmarkedImagesCompanion data) {
    return BookmarkedImage(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      color: data.color.present ? data.color.value : this.color,
      blurHash: data.blurHash.present ? data.blurHash.value : this.blurHash,
      likes: data.likes.present ? data.likes.value : this.likes,
      likedByUser:
          data.likedByUser.present ? data.likedByUser.value : this.likedByUser,
      description:
          data.description.present ? data.description.value : this.description,
      userId: data.userId.present ? data.userId.value : this.userId,
      username: data.username.present ? data.username.value : this.username,
      userProfileImage: data.userProfileImage.present
          ? data.userProfileImage.value
          : this.userProfileImage,
      rawUrl: data.rawUrl.present ? data.rawUrl.value : this.rawUrl,
      fullUrl: data.fullUrl.present ? data.fullUrl.value : this.fullUrl,
      regularUrl:
          data.regularUrl.present ? data.regularUrl.value : this.regularUrl,
      smallUrl: data.smallUrl.present ? data.smallUrl.value : this.smallUrl,
      thumbUrl: data.thumbUrl.present ? data.thumbUrl.value : this.thumbUrl,
      bookmarkedAt: data.bookmarkedAt.present
          ? data.bookmarkedAt.value
          : this.bookmarkedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookmarkedImage(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('color: $color, ')
          ..write('blurHash: $blurHash, ')
          ..write('likes: $likes, ')
          ..write('likedByUser: $likedByUser, ')
          ..write('description: $description, ')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('userProfileImage: $userProfileImage, ')
          ..write('rawUrl: $rawUrl, ')
          ..write('fullUrl: $fullUrl, ')
          ..write('regularUrl: $regularUrl, ')
          ..write('smallUrl: $smallUrl, ')
          ..write('thumbUrl: $thumbUrl, ')
          ..write('bookmarkedAt: $bookmarkedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      createdAt,
      updatedAt,
      width,
      height,
      color,
      blurHash,
      likes,
      likedByUser,
      description,
      userId,
      username,
      userProfileImage,
      rawUrl,
      fullUrl,
      regularUrl,
      smallUrl,
      thumbUrl,
      bookmarkedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookmarkedImage &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.width == this.width &&
          other.height == this.height &&
          other.color == this.color &&
          other.blurHash == this.blurHash &&
          other.likes == this.likes &&
          other.likedByUser == this.likedByUser &&
          other.description == this.description &&
          other.userId == this.userId &&
          other.username == this.username &&
          other.userProfileImage == this.userProfileImage &&
          other.rawUrl == this.rawUrl &&
          other.fullUrl == this.fullUrl &&
          other.regularUrl == this.regularUrl &&
          other.smallUrl == this.smallUrl &&
          other.thumbUrl == this.thumbUrl &&
          other.bookmarkedAt == this.bookmarkedAt);
}

class BookmarkedImagesCompanion extends UpdateCompanion<BookmarkedImage> {
  final Value<String> id;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> width;
  final Value<int> height;
  final Value<String> color;
  final Value<String> blurHash;
  final Value<int> likes;
  final Value<bool> likedByUser;
  final Value<String?> description;
  final Value<String> userId;
  final Value<String> username;
  final Value<String> userProfileImage;
  final Value<String> rawUrl;
  final Value<String> fullUrl;
  final Value<String> regularUrl;
  final Value<String> smallUrl;
  final Value<String> thumbUrl;
  final Value<DateTime> bookmarkedAt;
  final Value<int> rowid;
  const BookmarkedImagesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.color = const Value.absent(),
    this.blurHash = const Value.absent(),
    this.likes = const Value.absent(),
    this.likedByUser = const Value.absent(),
    this.description = const Value.absent(),
    this.userId = const Value.absent(),
    this.username = const Value.absent(),
    this.userProfileImage = const Value.absent(),
    this.rawUrl = const Value.absent(),
    this.fullUrl = const Value.absent(),
    this.regularUrl = const Value.absent(),
    this.smallUrl = const Value.absent(),
    this.thumbUrl = const Value.absent(),
    this.bookmarkedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BookmarkedImagesCompanion.insert({
    required String id,
    required String createdAt,
    required String updatedAt,
    required int width,
    required int height,
    required String color,
    required String blurHash,
    required int likes,
    required bool likedByUser,
    this.description = const Value.absent(),
    required String userId,
    required String username,
    required String userProfileImage,
    required String rawUrl,
    required String fullUrl,
    required String regularUrl,
    required String smallUrl,
    required String thumbUrl,
    required DateTime bookmarkedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        width = Value(width),
        height = Value(height),
        color = Value(color),
        blurHash = Value(blurHash),
        likes = Value(likes),
        likedByUser = Value(likedByUser),
        userId = Value(userId),
        username = Value(username),
        userProfileImage = Value(userProfileImage),
        rawUrl = Value(rawUrl),
        fullUrl = Value(fullUrl),
        regularUrl = Value(regularUrl),
        smallUrl = Value(smallUrl),
        thumbUrl = Value(thumbUrl),
        bookmarkedAt = Value(bookmarkedAt);
  static Insertable<BookmarkedImage> custom({
    Expression<String>? id,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? width,
    Expression<int>? height,
    Expression<String>? color,
    Expression<String>? blurHash,
    Expression<int>? likes,
    Expression<bool>? likedByUser,
    Expression<String>? description,
    Expression<String>? userId,
    Expression<String>? username,
    Expression<String>? userProfileImage,
    Expression<String>? rawUrl,
    Expression<String>? fullUrl,
    Expression<String>? regularUrl,
    Expression<String>? smallUrl,
    Expression<String>? thumbUrl,
    Expression<DateTime>? bookmarkedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (color != null) 'color': color,
      if (blurHash != null) 'blur_hash': blurHash,
      if (likes != null) 'likes': likes,
      if (likedByUser != null) 'liked_by_user': likedByUser,
      if (description != null) 'description': description,
      if (userId != null) 'user_id': userId,
      if (username != null) 'username': username,
      if (userProfileImage != null) 'user_profile_image': userProfileImage,
      if (rawUrl != null) 'raw_url': rawUrl,
      if (fullUrl != null) 'full_url': fullUrl,
      if (regularUrl != null) 'regular_url': regularUrl,
      if (smallUrl != null) 'small_url': smallUrl,
      if (thumbUrl != null) 'thumb_url': thumbUrl,
      if (bookmarkedAt != null) 'bookmarked_at': bookmarkedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BookmarkedImagesCompanion copyWith(
      {Value<String>? id,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? width,
      Value<int>? height,
      Value<String>? color,
      Value<String>? blurHash,
      Value<int>? likes,
      Value<bool>? likedByUser,
      Value<String?>? description,
      Value<String>? userId,
      Value<String>? username,
      Value<String>? userProfileImage,
      Value<String>? rawUrl,
      Value<String>? fullUrl,
      Value<String>? regularUrl,
      Value<String>? smallUrl,
      Value<String>? thumbUrl,
      Value<DateTime>? bookmarkedAt,
      Value<int>? rowid}) {
    return BookmarkedImagesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
      blurHash: blurHash ?? this.blurHash,
      likes: likes ?? this.likes,
      likedByUser: likedByUser ?? this.likedByUser,
      description: description ?? this.description,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      userProfileImage: userProfileImage ?? this.userProfileImage,
      rawUrl: rawUrl ?? this.rawUrl,
      fullUrl: fullUrl ?? this.fullUrl,
      regularUrl: regularUrl ?? this.regularUrl,
      smallUrl: smallUrl ?? this.smallUrl,
      thumbUrl: thumbUrl ?? this.thumbUrl,
      bookmarkedAt: bookmarkedAt ?? this.bookmarkedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (blurHash.present) {
      map['blur_hash'] = Variable<String>(blurHash.value);
    }
    if (likes.present) {
      map['likes'] = Variable<int>(likes.value);
    }
    if (likedByUser.present) {
      map['liked_by_user'] = Variable<bool>(likedByUser.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (userProfileImage.present) {
      map['user_profile_image'] = Variable<String>(userProfileImage.value);
    }
    if (rawUrl.present) {
      map['raw_url'] = Variable<String>(rawUrl.value);
    }
    if (fullUrl.present) {
      map['full_url'] = Variable<String>(fullUrl.value);
    }
    if (regularUrl.present) {
      map['regular_url'] = Variable<String>(regularUrl.value);
    }
    if (smallUrl.present) {
      map['small_url'] = Variable<String>(smallUrl.value);
    }
    if (thumbUrl.present) {
      map['thumb_url'] = Variable<String>(thumbUrl.value);
    }
    if (bookmarkedAt.present) {
      map['bookmarked_at'] = Variable<DateTime>(bookmarkedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarkedImagesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('color: $color, ')
          ..write('blurHash: $blurHash, ')
          ..write('likes: $likes, ')
          ..write('likedByUser: $likedByUser, ')
          ..write('description: $description, ')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('userProfileImage: $userProfileImage, ')
          ..write('rawUrl: $rawUrl, ')
          ..write('fullUrl: $fullUrl, ')
          ..write('regularUrl: $regularUrl, ')
          ..write('smallUrl: $smallUrl, ')
          ..write('thumbUrl: $thumbUrl, ')
          ..write('bookmarkedAt: $bookmarkedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BookmarkedImagesTable bookmarkedImages =
      $BookmarkedImagesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [bookmarkedImages];
}

typedef $$BookmarkedImagesTableCreateCompanionBuilder
    = BookmarkedImagesCompanion Function({
  required String id,
  required String createdAt,
  required String updatedAt,
  required int width,
  required int height,
  required String color,
  required String blurHash,
  required int likes,
  required bool likedByUser,
  Value<String?> description,
  required String userId,
  required String username,
  required String userProfileImage,
  required String rawUrl,
  required String fullUrl,
  required String regularUrl,
  required String smallUrl,
  required String thumbUrl,
  required DateTime bookmarkedAt,
  Value<int> rowid,
});
typedef $$BookmarkedImagesTableUpdateCompanionBuilder
    = BookmarkedImagesCompanion Function({
  Value<String> id,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> width,
  Value<int> height,
  Value<String> color,
  Value<String> blurHash,
  Value<int> likes,
  Value<bool> likedByUser,
  Value<String?> description,
  Value<String> userId,
  Value<String> username,
  Value<String> userProfileImage,
  Value<String> rawUrl,
  Value<String> fullUrl,
  Value<String> regularUrl,
  Value<String> smallUrl,
  Value<String> thumbUrl,
  Value<DateTime> bookmarkedAt,
  Value<int> rowid,
});

class $$BookmarkedImagesTableFilterComposer
    extends Composer<_$AppDatabase, $BookmarkedImagesTable> {
  $$BookmarkedImagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get blurHash => $composableBuilder(
      column: $table.blurHash, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get likes => $composableBuilder(
      column: $table.likes, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get likedByUser => $composableBuilder(
      column: $table.likedByUser, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userProfileImage => $composableBuilder(
      column: $table.userProfileImage,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rawUrl => $composableBuilder(
      column: $table.rawUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fullUrl => $composableBuilder(
      column: $table.fullUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get regularUrl => $composableBuilder(
      column: $table.regularUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get smallUrl => $composableBuilder(
      column: $table.smallUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get thumbUrl => $composableBuilder(
      column: $table.thumbUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get bookmarkedAt => $composableBuilder(
      column: $table.bookmarkedAt, builder: (column) => ColumnFilters(column));
}

class $$BookmarkedImagesTableOrderingComposer
    extends Composer<_$AppDatabase, $BookmarkedImagesTable> {
  $$BookmarkedImagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get blurHash => $composableBuilder(
      column: $table.blurHash, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get likes => $composableBuilder(
      column: $table.likes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get likedByUser => $composableBuilder(
      column: $table.likedByUser, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userProfileImage => $composableBuilder(
      column: $table.userProfileImage,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rawUrl => $composableBuilder(
      column: $table.rawUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fullUrl => $composableBuilder(
      column: $table.fullUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get regularUrl => $composableBuilder(
      column: $table.regularUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get smallUrl => $composableBuilder(
      column: $table.smallUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get thumbUrl => $composableBuilder(
      column: $table.thumbUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get bookmarkedAt => $composableBuilder(
      column: $table.bookmarkedAt,
      builder: (column) => ColumnOrderings(column));
}

class $$BookmarkedImagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookmarkedImagesTable> {
  $$BookmarkedImagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get blurHash =>
      $composableBuilder(column: $table.blurHash, builder: (column) => column);

  GeneratedColumn<int> get likes =>
      $composableBuilder(column: $table.likes, builder: (column) => column);

  GeneratedColumn<bool> get likedByUser => $composableBuilder(
      column: $table.likedByUser, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get userProfileImage => $composableBuilder(
      column: $table.userProfileImage, builder: (column) => column);

  GeneratedColumn<String> get rawUrl =>
      $composableBuilder(column: $table.rawUrl, builder: (column) => column);

  GeneratedColumn<String> get fullUrl =>
      $composableBuilder(column: $table.fullUrl, builder: (column) => column);

  GeneratedColumn<String> get regularUrl => $composableBuilder(
      column: $table.regularUrl, builder: (column) => column);

  GeneratedColumn<String> get smallUrl =>
      $composableBuilder(column: $table.smallUrl, builder: (column) => column);

  GeneratedColumn<String> get thumbUrl =>
      $composableBuilder(column: $table.thumbUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get bookmarkedAt => $composableBuilder(
      column: $table.bookmarkedAt, builder: (column) => column);
}

class $$BookmarkedImagesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookmarkedImagesTable,
    BookmarkedImage,
    $$BookmarkedImagesTableFilterComposer,
    $$BookmarkedImagesTableOrderingComposer,
    $$BookmarkedImagesTableAnnotationComposer,
    $$BookmarkedImagesTableCreateCompanionBuilder,
    $$BookmarkedImagesTableUpdateCompanionBuilder,
    (
      BookmarkedImage,
      BaseReferences<_$AppDatabase, $BookmarkedImagesTable, BookmarkedImage>
    ),
    BookmarkedImage,
    PrefetchHooks Function()> {
  $$BookmarkedImagesTableTableManager(
      _$AppDatabase db, $BookmarkedImagesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookmarkedImagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookmarkedImagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookmarkedImagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> width = const Value.absent(),
            Value<int> height = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> blurHash = const Value.absent(),
            Value<int> likes = const Value.absent(),
            Value<bool> likedByUser = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> userProfileImage = const Value.absent(),
            Value<String> rawUrl = const Value.absent(),
            Value<String> fullUrl = const Value.absent(),
            Value<String> regularUrl = const Value.absent(),
            Value<String> smallUrl = const Value.absent(),
            Value<String> thumbUrl = const Value.absent(),
            Value<DateTime> bookmarkedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BookmarkedImagesCompanion(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            width: width,
            height: height,
            color: color,
            blurHash: blurHash,
            likes: likes,
            likedByUser: likedByUser,
            description: description,
            userId: userId,
            username: username,
            userProfileImage: userProfileImage,
            rawUrl: rawUrl,
            fullUrl: fullUrl,
            regularUrl: regularUrl,
            smallUrl: smallUrl,
            thumbUrl: thumbUrl,
            bookmarkedAt: bookmarkedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String createdAt,
            required String updatedAt,
            required int width,
            required int height,
            required String color,
            required String blurHash,
            required int likes,
            required bool likedByUser,
            Value<String?> description = const Value.absent(),
            required String userId,
            required String username,
            required String userProfileImage,
            required String rawUrl,
            required String fullUrl,
            required String regularUrl,
            required String smallUrl,
            required String thumbUrl,
            required DateTime bookmarkedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              BookmarkedImagesCompanion.insert(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            width: width,
            height: height,
            color: color,
            blurHash: blurHash,
            likes: likes,
            likedByUser: likedByUser,
            description: description,
            userId: userId,
            username: username,
            userProfileImage: userProfileImage,
            rawUrl: rawUrl,
            fullUrl: fullUrl,
            regularUrl: regularUrl,
            smallUrl: smallUrl,
            thumbUrl: thumbUrl,
            bookmarkedAt: bookmarkedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BookmarkedImagesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BookmarkedImagesTable,
    BookmarkedImage,
    $$BookmarkedImagesTableFilterComposer,
    $$BookmarkedImagesTableOrderingComposer,
    $$BookmarkedImagesTableAnnotationComposer,
    $$BookmarkedImagesTableCreateCompanionBuilder,
    $$BookmarkedImagesTableUpdateCompanionBuilder,
    (
      BookmarkedImage,
      BaseReferences<_$AppDatabase, $BookmarkedImagesTable, BookmarkedImage>
    ),
    BookmarkedImage,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BookmarkedImagesTableTableManager get bookmarkedImages =>
      $$BookmarkedImagesTableTableManager(_db, _db.bookmarkedImages);
}
