import 'package:flutter/material.dart';
import 'package:pet_guardian/data/shop_items.dart';
import 'package:pet_guardian/models/shop_items.dart';
import 'package:pet_guardian/provider/bottom_navigation_provider.dart';
import 'package:pet_guardian/provider/user_provider.dart';
import 'package:pet_guardian/widgets/product_card.dart';
import 'package:pet_guardian/widgets/shop_item_card.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final products = [
    {
      'imagePath': 'assets/product1.jpg',
      'title': 'Dog Toy Double Ring',
      'description': 'Handmade chewing dog toy made with cotton rope.',
      'price': 1900.00,
    },
    {
      'imagePath': 'assets/product1.jpg',
      'title': 'Cat Scratching Post',
      'description': 'Durable scratching post with soft plush top.',
      'price': 2500.00,
    },
    {
      'imagePath': 'assets/product1.jpg',
      'title': 'Pet Food Bowl Set',
      'description': 'Stainless steel bowls with non-slip base.',
      'price': 1200.00,
    },
    {
      'imagePath': 'assets/product1.jpg',
      'title': 'Pet Grooming Kit',
      'description': 'Complete grooming set for all pet types.',
      'price': 3500.00,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final userProvider = context.watch<UserProvider>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 245, 146, 69),
            padding: EdgeInsets.all(24),
            width: double.infinity,
            height: screenSize.height - 50,
            child: Column(
              spacing: 16,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  "User Profile",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: screenSize.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(52, 0, 0, 0),
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/logo_bg.png',
                      image: userProvider.user?.profilePictureURL ?? "",
                      width: 55,
                      height: 55,
                      fit: BoxFit.cover,
                      imageErrorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Icon(
                            Icons.error,
                            color: Color.fromARGB(255, 245, 146, 69),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 330),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(52, 0, 0, 0),
                        offset: const Offset(0, 0),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(minHeight: screenSize.height * 0.55),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: screenSize.width * 0.6,
                                    child: Text(
                                      userProvider.user?.username ??
                                          "Not Available",
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenSize.width * 0.6,
                                    child: Text(
                                      userProvider.user?.email ??
                                          "Not Available",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: const Color.fromARGB(
                                            255, 143, 143, 143),
                                      ),
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenSize.width * 0.6,
                                    child: Text(
                                      userProvider.user?.contactNumber ??
                                          "Not Available",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: const Color.fromARGB(
                                            255, 143, 143, 143),
                                      ),
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(255, 245, 146, 69),
                                  foregroundColor: Colors.white,
                                ),
                                child: Text("Edit",
                                    style: TextStyle(fontSize: 16)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "About",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 143, 143, 143),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "Your Purchases",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 350,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            itemBuilder: (context, index) {
                              final shopItem = shopItemsList[index];

                              return Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: ShopItemCard(
                                  item: shopItem,
                                  onTap: () {},
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your Cart",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                "View cart",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 350,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            itemBuilder: (context, index) {
                              final shopItem = shopItemsList[index];

                              return Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: ShopItemCard(
                                  item: shopItem,
                                  onTap: () {},
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                context.read<UserProvider>().logout();
                                context
                                    .read<BottomNavigationProvider>()
                                    .updateIndex(1);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 199, 155),
                                foregroundColor: Colors.white,
                              ),
                              child: Text("LogOut",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 245, 146, 69),
                                foregroundColor: Colors.white,
                              ),
                              child: Text("Rate Us",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 64),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
