import 'package:pet_guardian/models/dog_community.dart';

final List<DogCommunity> dogCommunityList = [
  DogCommunity(
    id: '1',
    name: 'Dog Training Tips',
    description: 'Share and learn training techniques for your furry friends',
    imagePath: 'assets/training-golden-retrievers.jpg',
    memberCount: 1250,
    adminName: 'John Smith',
    topics: [
      'Basic Training',
      'Behavior',
      'Puppy Training',
      'Advanced Commands'
    ],
    isPrivate: false,
    posts: [
      DogCommunityPost(
        userId: '1',
        userName: 'Sarah Wilson',
        userImage: 'assets/Sample_User_Icon.png',
        content: 'Here\'s a great tip for teaching "stay" command...',
        imagePath: 'assets/puppy.jpg',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        likes: 45,
        comments: 12,
        commentsList: [
          DogCommunityComment(
            userId: '2',
            userName: 'Mike Johnson',
            userImage: 'assets/Sample_User_Icon.png',
            content: 'This really helped with my puppy!',
            timestamp: DateTime.now().subtract(const Duration(hours: 1)),
          ),
        ],
      ),
    ],
  ),
  DogCommunity(
    id: '2',
    name: 'Dog Health & Wellness',
    description: 'Discuss pet health, nutrition, and wellness topics',
    imagePath: 'assets/petarticle.jpg',
    memberCount: 980,
    adminName: 'Dr. Emma Davis',
    topics: ['Nutrition', 'Exercise', 'Veterinary Care', 'Mental Health'],
    isPrivate: false,
    posts: [
      DogCommunityPost(
        userId: '3',
        userName: 'Dr. Emma Davis',
        userImage: 'assets/Sample_User_Icon.png',
        content: 'Important tips for maintaining your dog\'s dental health...',
        timestamp: DateTime.now().subtract(const Duration(hours: 5)),
        likes: 89,
        comments: 23,
        commentsList: [],
      ),
    ],
  ),
];
