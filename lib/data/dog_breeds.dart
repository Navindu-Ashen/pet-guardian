import 'package:pet_guardian/models/dog_breeds.dart';

final List<DogBreed> dogBreedsList = [
  DogBreed(
    name: 'German Shepherd',
    description:
        'The German Shepherd is a breed of medium to large-sized working dog that originated in Germany. Known for their intelligence, loyalty, and versatility, they excel in various roles including police, military, and service work.',
    imagePath: 'assets/german.jpeg',
    origin: 'Germany',
    temperament: 'Confident, Courageous, Smart, Alert',
    lifeSpan: '9-13 years',
    height: 'Males: 24-26 inches, Females: 22-24 inches',
    weight: 'Males: 65-90 lbs, Females: 50-70 lbs',
    characteristics: [
      'Highly intelligent and trainable',
      'Strong protective instincts',
      'Good with children and families',
      'Requires regular exercise',
      'Excellent working dog capabilities'
    ],
    healthIssues: [
      'Hip Dysplasia',
      'Elbow Dysplasia',
      'Bloat',
      'Degenerative Myelopathy'
    ],
  ),
  DogBreed(
    name: 'Labrador Retriever',
    description:
        'The Labrador Retriever is one of the most popular dog breeds worldwide. Known for their friendly nature, intelligence, and versatility, they make excellent family pets and working dogs.',
    imagePath: 'assets/Labrador_on_Quantock_(2175262184).jpg',
    origin: 'Canada',
    temperament: 'Friendly, Active, Outgoing',
    lifeSpan: '10-12 years',
    height: 'Males: 22.5-24.5 inches, Females: 21.5-23.5 inches',
    weight: 'Males: 65-80 lbs, Females: 55-70 lbs',
    characteristics: [
      'Excellent with children',
      'Friendly with other dogs',
      'Great swimming ability',
      'Easy to train',
      'Good-natured disposition'
    ],
    healthIssues: [
      'Hip Dysplasia',
      'Exercise Induced Collapse',
      'Eye Problems',
      'Obesity Tendency'
    ],
  ),
  DogBreed(
    name: 'Bulldog',
    description:
        'The Bulldog is a medium-sized breed known for its muscular build, distinctive wrinkled face, and friendly temperament. They are loyal and affectionate companions, making them popular family pets.',
    imagePath: 'assets/Bulldog_inglese.jpg',
    origin: 'England',
    temperament: 'Docile, Willful, Friendly',
    lifeSpan: '8-12 years',
    height: 'Males: 12-16 inches, Females: 12-14 inches',
    weight: 'Males: 50-55 lbs, Females: 40-50 lbs',
    characteristics: [
      'Affectionate and loyal',
      'Good with children',
      'Low exercise needs',
      'Prone to heat sensitivity',
      'Calm demeanor'
    ],
    healthIssues: [
      'Hip Dysplasia',
      'Breathing Problems (due to short snout)',
      'Skin Infections',
      'Obesity'
    ],
  ),
  DogBreed(
    name: 'Beagle',
    description:
        'The Beagle is a small to medium-sized breed known for its keen sense of smell and friendly personality. They are energetic, curious, and great companions for active families.',
    imagePath: 'assets/beagle.jpg',
    origin: 'England',
    temperament: 'Friendly, Curious, Merry',
    lifeSpan: '12-15 years',
    height: 'Males: 13-15 inches, Females: 13-15 inches',
    weight: 'Males: 22-24 lbs, Females: 20-22 lbs',
    characteristics: [
      'Great with kids',
      'Good with other dogs',
      'Energetic and playful',
      'Excellent sense of smell',
      'Needs regular exercise'
    ],
    healthIssues: ['Hip Dysplasia', 'Ear Infections', 'Obesity', 'Epilepsy'],
  ),
  DogBreed(
    name: 'Golden Retriever',
    description:
        'The Golden Retriever is a large breed known for its friendly and tolerant attitude. They are highly intelligent and versatile, making them ideal family pets and service dogs.',
    imagePath: 'assets/training-golden-retrievers.jpg',
    origin: 'Scotland',
    temperament: 'Friendly, Intelligent, Devoted',
    lifeSpan: '10-12 years',
    height: 'Males: 23-24 inches, Females: 21.5-22.5 inches',
    weight: 'Males: 65-75 lbs, Females: 55-65 lbs',
    characteristics: [
      'Very friendly and sociable',
      'Great with children',
      'Highly trainable',
      'Requires a lot of exercise',
      'Loves to swim'
    ],
    healthIssues: [
      'Hip Dysplasia',
      'Elbow Dysplasia',
      'Cancer',
      'Heart Issues'
    ],
  ),
  DogBreed(
    name: 'Boxer',
    description:
        'The Boxer is a medium to large-sized breed with a strong, muscular build and an energetic personality. They are playful, loyal, and protective, making them great family companions.',
    imagePath: 'assets/boxer-dog.jpg',
    origin: 'Germany',
    temperament: 'Fun-loving, Energetic, Loyal',
    lifeSpan: '10-12 years',
    height: 'Males: 23-25 inches, Females: 21.5-23.5 inches',
    weight: 'Males: 65-80 lbs, Females: 50-65 lbs',
    characteristics: [
      'Very playful and energetic',
      'Good with children and families',
      'Protective nature',
      'Loyal and affectionate',
      'Needs regular exercise and stimulation'
    ],
    healthIssues: ['Hip Dysplasia', 'Heart Conditions', 'Cancer', 'Bloat'],
  ),
];
