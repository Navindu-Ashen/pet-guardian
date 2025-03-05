import 'package:flutter/material.dart';
import 'package:pet_guardian/data/training.dart';
import 'package:pet_guardian/screens/home/training_details.dart';
import 'package:pet_guardian/widgets/training_card.dart';

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 146, 69),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const Text(
              "Training",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const Icon(
              Icons.list,
              color: Colors.white,
              size: 18,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: trainingList
                .map((training) => Column(
                      children: [
                        TrainingCard(
                          image: training.imagePath,
                          title: training.title,
                          author: training.author,
                          rating: training.rating,
                          ratingCount: training.ratingCount,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TrainingDetails(trainingData: training),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
