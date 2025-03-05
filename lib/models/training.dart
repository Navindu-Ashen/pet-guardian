class TrainingData {
  final String title;
  final String subtitle;
  final String description;
  final String videoUrl;
  final String imagePath;
  final List<String> commands;
  final List<String> tips;
  final String author;
  final String rating;
  final String ratingCount;

  TrainingData({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.videoUrl,
    required this.imagePath,
    required this.commands,
    required this.tips,
    required this.author,
    required this.rating,
    required this.ratingCount,
  });
}
