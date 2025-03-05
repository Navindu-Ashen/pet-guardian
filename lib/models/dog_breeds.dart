class DogBreed {
  final String name;
  final String description;
  final String imagePath;
  final String origin;
  final String temperament;
  final String lifeSpan;
  final String height;
  final String weight;
  final List<String> characteristics;
  final List<String> healthIssues;

  DogBreed({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.origin,
    required this.temperament,
    required this.lifeSpan,
    required this.height,
    required this.weight,
    required this.characteristics,
    required this.healthIssues,
  });
}
