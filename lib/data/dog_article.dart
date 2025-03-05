import 'package:pet_guardian/models/dog_article.dart';

final List<DogArticle> dogArticlesList = [
  DogArticle(
    title: 'Essential Tips for First-Time Dog Owners',
    author: 'Dr. Sarah Johnson',
    date: 'March 5, 2024',
    category: 'Pet Care',
    imagePath: 'assets/puppy.jpg',
    summary:
        'A comprehensive guide for new dog owners covering basic care, training, and common challenges.',
    content: '''
    Bringing a new dog home is an exciting experience, but it also comes with responsibilities. Here's what you need to know:

    1. Setting Up Your Home
    - Create a safe space with a comfortable bed
    - Remove potential hazards
    - Stock up on essential supplies

    2. Establishing a Routine
    - Regular feeding times
    - Consistent bathroom breaks
    - Exercise schedule
    - Training sessions

    3. Healthcare Basics
    - Find a reliable veterinarian
    - Schedule vaccinations
    - Plan regular check-ups
    - Consider pet insurance

    4. Training Fundamentals
    - Start with basic commands
    - Use positive reinforcement
    - Be consistent with rules
    - Socialize your puppy
    ''',
    tags: ['New Pet', 'Dog Care', 'Training', 'Pet Health'],
    readTimeMinutes: 5,
  ),
  DogArticle(
    title: 'Understanding Dog Body Language',
    author: 'Mark Thompson',
    date: 'March 4, 2024',
    category: 'Behavior',
    imagePath: 'assets/basic.jpg',
    summary:
        'Learn to interpret your dog\'s body language and understand their emotional state better.',
    content: '''
    Dogs communicate primarily through body language. Learning to read these signals is crucial for any dog owner:

    1. Tail Positions
    - Wagging high: excitement or alertness
    - Wagging low: uncertainty
    - Tucked: fear or submission

    2. Ear Positions
    - Forward: alert and interested
    - Pulled back: friendly or submissive
    - Flat against head: fearful or stressed

    3. Facial Expressions
    - Relaxed mouth: comfortable
    - Yawning: stress or calming signal
    - Lip licking: anxiety or appeasement

    4. Body Postures
    - Play bow: invitation to play
    - Stiff stance: alertness or potential aggression
    - Rolling over: submission or trust
    ''',
    tags: ['Behavior', 'Communication', 'Training'],
    readTimeMinutes: 6,
  ),
];
