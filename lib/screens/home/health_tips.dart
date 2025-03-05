import 'package:flutter/material.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({super.key});

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
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 146, 69),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const Text(
              "Dog Health Tips",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 30),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              context,
              title: 'Regular Veterinary Check-ups',
              icon: Icons.medical_services,
              content:
                  'Schedule regular veterinary visits for your dog. Annual check-ups help detect health issues early and ensure vaccinations are up to date. Regular dental cleanings and preventive care are essential for maintaining your dog\'s overall health.',
            ),
            _buildSection(
              context,
              title: 'Proper Nutrition',
              icon: Icons.restaurant,
              content:
                  'Feed your dog high-quality, age-appropriate food. Puppies, adult dogs, and seniors have different nutritional needs. Avoid feeding table scraps and keep fresh water available at all times. Monitor portion sizes to prevent obesity.',
            ),
            _buildSection(
              context,
              title: 'Exercise Requirements',
              icon: Icons.directions_run,
              content:
                  'Dogs need regular exercise for physical and mental well-being. Daily walks, playtime, and activities suitable for your dog\'s breed, age, and health condition are essential. Exercise helps prevent obesity, behavioral issues, and maintains cardiovascular health.',
            ),
            _buildSection(
              context,
              title: 'Dental Care',
              icon: Icons.clean_hands,
              content:
                  'Maintain your dog\'s dental hygiene through regular brushing, dental chews, and professional cleanings. Poor dental health can lead to serious health issues. Look for signs of dental problems like bad breath or bleeding gums.',
            ),
            _buildSection(
              context,
              title: 'Grooming Needs',
              icon: Icons.brush,
              content:
                  'Regular grooming keeps your dog clean and healthy. Brush their coat, trim nails, clean ears, and bathe as needed. Different breeds have different grooming requirements. Watch for skin issues, parasites, or unusual changes.',
            ),
            _buildSection(
              context,
              title: 'Parasite Prevention',
              icon: Icons.bug_report,
              content:
                  'Protect your dog from fleas, ticks, and worms with regular preventive treatments. These parasites can cause serious health issues. Consult your veterinarian for the best prevention schedule for your area.',
            ),
            _buildSection(
              context,
              title: 'Mental Stimulation',
              icon: Icons.psychology,
              content:
                  'Keep your dog mentally active with training, puzzle toys, and interactive play. Mental stimulation prevents boredom, reduces anxiety, and maintains cognitive function. Regular training sessions strengthen your bond.',
            ),
            _buildSection(
              context,
              title: 'Vaccination Schedule',
              icon: Icons.vaccines,
              content:
                  'Follow the recommended vaccination schedule for your dog. Core vaccines prevent serious diseases. Your veterinarian can advise on additional vaccines based on your dog\'s lifestyle and risk factors.',
            ),
            _buildSection(
              context,
              title: 'Emergency Preparedness',
              icon: Icons.emergency,
              content:
                  'Know the signs of common emergencies and have a plan. Keep your veterinarian\'s contact information readily available. Familiarize yourself with basic first aid for dogs and have a pet first aid kit.',
            ),
            _buildSection(
              context,
              title: 'Senior Dog Care',
              icon: Icons.elderly,
              content:
                  'Older dogs need special attention. Watch for signs of aging like reduced mobility or changes in behavior. More frequent vet check-ups and adjustments to diet and exercise may be necessary.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title,
      required String content,
      required IconData icon}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 2,
      child: ExpansionTile(
        backgroundColor: Colors.white,
        leading: Icon(
          icon,
          color: const Color.fromARGB(255, 245, 146, 69),
          size: 28,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
