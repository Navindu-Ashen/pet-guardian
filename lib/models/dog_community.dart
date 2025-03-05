class DogCommunity {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final int memberCount;
  final String adminName;
  final List<String> topics;
  final List<DogCommunityPost> posts;
  final bool isPrivate;

  DogCommunity({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.memberCount,
    required this.adminName,
    required this.topics,
    required this.posts,
    required this.isPrivate,
  });
}

class DogCommunityPost {
  final String userId;
  final String userName;
  final String userImage;
  final String content;
  final String? imagePath;
  final DateTime timestamp;
  final int likes;
  final int comments;
  final List<DogCommunityComment> commentsList;

  DogCommunityPost({
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.content,
    this.imagePath,
    required this.timestamp,
    required this.likes,
    required this.comments,
    required this.commentsList,
  });
}

class DogCommunityComment {
  final String userId;
  final String userName;
  final String userImage;
  final String content;
  final DateTime timestamp;

  DogCommunityComment({
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.content,
    required this.timestamp,
  });
}
