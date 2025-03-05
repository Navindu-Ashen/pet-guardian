import 'package:pet_guardian/models/training.dart';

List<TrainingData> trainingList = [
  TrainingData(
    title: "Basic Dog Training",
    subtitle: "Essential Commands Every Dog Should Know",
    description:
        "Training your dog is essential for developing a strong bond and ensuring good behavior.",
    videoUrl: "https://youtu.be/DPNz6reMVXY",
    imagePath: "assets/basic.jpg",
    commands: [
      "Sit - The most basic command.",
      "Stay - Helps with self-control.",
      "Come - Essential for safety.",
      "Down - Helps calm your dog.",
      "Leave it - Prevents picking up harmful items."
    ],
    tips: [
      "Keep training sessions short (5-10 minutes).",
      "Use positive reinforcement.",
      "Be consistent with commands.",
      "Practice in different locations.",
      "Always end on a positive note."
    ],
    author: 'John Doe',
    rating: '4.5',
    ratingCount: '180',
  ),
  TrainingData(
    title: "Advanced Dog Training",
    subtitle: "Take Your Dog’s Skills to the Next Level",
    description:
        "Advanced training enhances obedience and strengthens your dog's abilities.",
    videoUrl:
        "https://www.youtube.com/watch?v=fSUE48tqEzY&pp=ygUVYWR2YW5jZWQgZG9nIHRyYWluaW5n", // Replace with a real video URL
    imagePath: "assets/advance.jpg",
    commands: [
      "Heel - Walk nicely without pulling.",
      "Fetch - Retrieve objects on command.",
      "Roll Over - A fun and advanced trick.",
      "Spin - A cool way to engage your dog.",
      "Play Dead - Fun for performances."
    ],
    tips: [
      "Use high-value treats for motivation.",
      "Gradually increase difficulty.",
      "Reward good behavior immediately.",
      "Be patient and consistent.",
      "Train in a distraction-free environment."
    ],
    author: 'Sarah Johnson',
    rating: '4.3',
    ratingCount: '120',
  ),
  TrainingData(
    title: "Puppy Training",
    subtitle: "Start Your Puppy’s Training Journey",
    description:
        "Training your puppy early on helps establish good habits and prevents future behavioral issues.",
    videoUrl:
        "https://www.youtube.com/watch?v=HTXajoc4a3k&pp=ygUOcHVwcHkgdHJhaW5pbmc%3D",
    imagePath: "assets/puppy.jpg",
    commands: [
      "Sit - Great first command for puppies.",
      "Potty Training - Establish a routine.",
      "Stay - Teach your puppy to remain in place.",
      "Come - Reinforces recall from a young age.",
      "Crate Training - A safe space for your puppy."
    ],
    tips: [
      "Be patient and understanding of your puppy's short attention span.",
      "Establish a routine and stick to it.",
      "Avoid punishment-based training methods.",
      "Socialize your puppy with other dogs and people.",
      "Use a consistent tone of voice for commands."
    ],
    author: 'Jane Smith',
    rating: '4.7',
    ratingCount: '250',
  ),
  TrainingData(
    title: "Leash Training",
    subtitle: "Teach Your Dog to Walk Calmly on a Leash",
    description:
        "Leash training helps your dog walk without pulling or causing discomfort during walks.",
    videoUrl:
        "https://www.youtube.com/watch?v=OwN0Ub3TWsk&pp=ygUUbGVhc2ggdHJhaW5pbmcgYSBkb2c%3D",
    imagePath: "assets/jk9-training-dogs-not-to-lead-pull.jpg",
    commands: [
      "Loose Leash Walking - Teach your dog to stay by your side.",
      "Stop - Help your dog stop pulling when they reach the end of the leash.",
      "Heel - Reinforce walking in position beside you.",
      "Sit - Stop for breaks during walks.",
      "Wait - Teach patience before crossing streets."
    ],
    tips: [
      "Use a harness instead of a collar to prevent neck strain.",
      "Walk at your dog’s pace and reward calm behavior.",
      "Avoid tugging on the leash, as it can reinforce pulling.",
      "Practice in different environments to reduce distractions.",
      "Reward your dog frequently for good behavior during walks."
    ],
    author: 'Mike Johnson',
    rating: '4.8',
    ratingCount: '200',
  ),
];
