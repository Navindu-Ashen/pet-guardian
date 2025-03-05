class DogEvent {
  final String title;
  final String date;
  final String time;
  final String location;
  final String imagePath;
  final String description;
  final String organizer;
  final double entryFee;
  final List<String> activities;
  final List<String> requirements;
  final bool isRegistrationRequired;
  final int maxParticipants;
  final String contactInfo;

  DogEvent({
    required this.title,
    required this.date,
    required this.time,
    required this.location,
    required this.imagePath,
    required this.description,
    required this.organizer,
    required this.entryFee,
    required this.activities,
    required this.requirements,
    required this.isRegistrationRequired,
    required this.maxParticipants,
    required this.contactInfo,
  });
}
