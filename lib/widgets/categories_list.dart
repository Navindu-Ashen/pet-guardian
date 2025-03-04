import 'package:flutter/material.dart';
import 'package:pet_guardian/screens/home/shop.dart';

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
                  "assets/images.jpeg",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text("Shop"),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            // Navigate to articles screen
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images.jpeg",
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
            // Navigate to dog breeds screen
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images.jpeg",
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
            // Navigate to training screen
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images.jpeg",
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
