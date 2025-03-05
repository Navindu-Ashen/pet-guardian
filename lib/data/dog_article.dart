import 'package:pet_guardian/models/dog_article.dart';

final List<DogArticle> dogArticlesList = [
  DogArticle(
    title: 'The Best Diet for Your Dog: What to Feed and What to Avoid',
    author: 'Dr. Emily Carter',
    date: 'March 3, 2024',
    category: 'Nutrition',
    imagePath: 'assets/dog diet.jpg',
    summary:
        'A guide to the best foods for your dog’s health, including essential nutrients and foods to avoid.',
    content: '''
    A balanced diet is crucial for your dog’s well-being. Here’s what you need to know:

    1. Essential Nutrients
    - Protein: Supports muscle growth (found in chicken, beef, fish)
    - Fats: Provides energy and healthy skin (found in fish oil, flaxseed)
    - Carbohydrates: Offers fiber for digestion (found in sweet potatoes, brown rice)
    - Vitamins & Minerals: Supports immune health (found in leafy greens, carrots)

    2. Foods to Include
    - Lean meats like chicken, turkey, and beef
    - Cooked fish (rich in omega-3 fatty acids)
    - Vegetables such as carrots, spinach, and green beans
    - Plain rice and sweet potatoes for digestion support

    3. Foods to Avoid
    - Chocolate (toxic to dogs)
    - Grapes & Raisins (cause kidney failure)
    - Onions & Garlic (damage red blood cells)
    - Excessive salt & sugar (can lead to dehydration and obesity)

    4. Hydration & Feeding Schedule
    - Always provide fresh water
    - Feed high-quality dog food twice a day
    - Adjust portion sizes based on age and activity level
    ''',
    tags: ['Dog Nutrition', 'Healthy Diet', 'Pet Food'],
    readTimeMinutes: 7,
  ),
  DogArticle(
    title: 'Homemade Dog Food: Recipes and Benefits',
    author: 'Chef Amanda Wells',
    date: 'March 2, 2024',
    category: 'Nutrition',
    imagePath: 'assets/homemade dog food.jpg',
    summary:
        'Discover the benefits of homemade dog food and try easy, nutritious recipes for your furry friend.',
    content: '''
    Homemade dog food allows you to control ingredients and ensure balanced nutrition. Here’s why and how to make it:

    1. Benefits of Homemade Dog Food
    - Avoids artificial preservatives
    - Provides fresh, high-quality ingredients
    - Allows customization for allergies or sensitivities
    - Ensures balanced nutrition

    2. Basic Ingredients for Homemade Meals
    - Protein: Chicken, turkey, beef, fish, or eggs
    - Vegetables: Carrots, spinach, peas, green beans
    - Carbs: Brown rice, quinoa, sweet potatoes
    - Healthy fats: Coconut oil, flaxseed oil, fish oil

    3. Simple Recipe: Chicken & Rice Meal
    - 1 cup cooked chicken (shredded)
    - 1/2 cup cooked brown rice
    - 1/4 cup steamed carrots and peas
    - 1 teaspoon fish oil
    - Mix ingredients and serve in portions

    4. Storage & Safety
    - Store in airtight containers in the fridge (3-4 days)
    - Freeze for up to 3 months
    - Consult a vet for balanced meal plans

    ''',
    tags: ['Homemade Dog Food', 'Healthy Diet', 'Pet Recipes'],
    readTimeMinutes: 8,
  ),
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
