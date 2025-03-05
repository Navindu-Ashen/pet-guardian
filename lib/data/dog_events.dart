import 'package:pet_guardian/models/dog_events.dart';

final List<DogEvent> dogEventsList = [
  DogEvent(
    title: 'Annual Dog Show 2024',
    date: 'March 15, 2024',
    time: '9:00 AM - 5:00 PM',
    location: 'Central Park, New York',
    imagePath: 'assets/dogevents.jpg',
    description:
        'Join us for the biggest dog show of the year! Featuring breed competitions, agility demonstrations, and fun activities for the whole family.',
    organizer: 'Pet Guardian Association',
    entryFee: 25.00,
    activities: [
      'Breed Competition',
      'Agility Course',
      'Best Costume Contest',
      'Training Demonstrations',
      'Pet Photography',
    ],
    requirements: [
      'Updated vaccination records',
      'Dogs must be on leash',
      'Proper identification tags',
      'Registration form completion',
    ],
    isRegistrationRequired: true,
    maxParticipants: 100,
    contactInfo: 'events@petguardian.com | (555) 123-4567',
  ),
  DogEvent(
    title: 'Pet Adoption Day',
    date: 'March 20, 2024',
    time: '10:00 AM - 3:00 PM',
    location: 'City Animal Shelter',
    imagePath: 'assets/pets.jpg',
    description:
        'Find your perfect furry companion! Meet adoptable dogs and learn about responsible pet ownership.',
    organizer: 'City Animal Shelter',
    entryFee: 0.00,
    activities: [
      'Meet & Greet with Dogs',
      'Adoption Counseling',
      'Pet Care Workshop',
      'Free Vet Consultation',
    ],
    requirements: [
      'Valid ID',
      'Proof of residence',
      'Reference check',
    ],
    isRegistrationRequired: false,
    maxParticipants: 50,
    contactInfo: 'shelter@city.com | (555) 987-6543',
  ),
];
