class DogArticle {
  final String title;
  final String author;
  final String date;
  final String category;
  final String imagePath;
  final String summary;
  final String content;
  final List<String> tags;
  final int readTimeMinutes;

  DogArticle({
    required this.title,
    required this.author,
    required this.date,
    required this.category,
    required this.imagePath,
    required this.summary,
    required this.content,
    required this.tags,
    required this.readTimeMinutes,
  });
}
