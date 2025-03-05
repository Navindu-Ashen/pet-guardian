import 'package:flutter/material.dart';
import 'package:pet_guardian/provider/user_provider.dart';
import 'package:pet_guardian/screens/bottom_navigation_scaffold.dart';
import 'package:pet_guardian/screens/community/dog_community.dart';
import 'package:pet_guardian/screens/events/dog_events.dart';
import 'package:pet_guardian/widgets/categories_list.dart';
import 'package:pet_guardian/widgets/home_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: FadeInImage.assetNetwork(
                            placeholder: 'assets/logo_bg.png',
                            image: userProvider.user?.profilePictureURL ?? "",
                            width: 55,
                            height: 55,
                            fit: BoxFit.cover,
                            imageErrorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Color.fromARGB(50, 245, 146, 69),
                                width: 55,
                                height: 55,
                                child: Center(
                                  child: Icon(
                                    Icons.error,
                                    color: Color.fromARGB(255, 245, 146, 69),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello ${userProvider.user?.username ?? "Not Available"}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              DateTime.now().hour < 12
                                  ? "Good Morning!"
                                  : DateTime.now().hour < 17
                                      ? "Good Afternoon!"
                                      : "Good Evening!",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      iconSize: 30,
                      onPressed: () {
                        BottomNavigationScaffold.scaffoldKey.currentState
                            ?.openEndDrawer();
                      },
                    ),
                  ],
                ),
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "In Love With Pets?",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              width: 180,
                              child: Text(
                                "Get all what you need for them",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 245, 146, 69),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/pets.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CategoriesList(),
                SizedBox(),
                Text(
                  "Events",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                HomeCard(
                    title: 'Find and Join Special Events For Your Pets',
                    image: 'assets/dogevents.jpg',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DogEvents(),
                        ),
                      );
                    }),
                SizedBox(),
                Text(
                  "Community",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                HomeCard(
                    title: 'Connect and Share with Communities',
                    image: 'assets/dogcommunities.jpeg',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DogCommunity(),
                        ),
                      );
                    }),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
