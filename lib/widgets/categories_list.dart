import 'package:flutter/material.dart';
import 'package:pet_guardian/provider/bottom_navigation_provider.dart';
import 'package:pet_guardian/screens/categories/articles/dog_article.dart';
import 'package:pet_guardian/screens/categories/dog_breeds/dog_breeds.dart';
import 'package:pet_guardian/screens/shop/shop.dart';
import 'package:pet_guardian/screens/categories/training/training.dart';
import 'package:pet_guardian/screens/categories/training/training_details.dart';
import 'package:provider/provider.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            context.read<BottomNavigationProvider>().updateIndex(0);
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/petshop.jpg",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text("Pet Shop"),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DogArticles(),
              ),
            );
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/petarticle.jpg",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text("Articles"),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DogBreeds(),
              ),
            );
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/breeds.jpeg",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text("Dog Breeds"),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Training(),
              ),
            );
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/puppy.jpg",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text("Training"),
            ],
          ),
        ),
      ],
    );
  }
}
