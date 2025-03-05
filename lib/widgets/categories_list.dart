import 'package:flutter/material.dart';
import 'package:pet_guardian/screens/home/dog_article.dart';
import 'package:pet_guardian/screens/home/dog_breeds.dart';
import 'package:pet_guardian/screens/home/shop.dart';
import 'package:pet_guardian/screens/home/training.dart';
import 'package:pet_guardian/screens/home/training_details.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Shop(),
              ),
            );
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
