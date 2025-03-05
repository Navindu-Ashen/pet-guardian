import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:pet_guardian/screens/home/home.dart';
import 'package:pet_guardian/screens/home/profile.dart';
import 'package:pet_guardian/screens/home/shop.dart';
import 'package:pet_guardian/widgets/notification_banner.dart';

class BottomNavigationScaffold extends StatefulWidget {
  const BottomNavigationScaffold({super.key});

  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  State<BottomNavigationScaffold> createState() =>
      _BottomNavigationScaffoldState();
}

class _BottomNavigationScaffoldState extends State<BottomNavigationScaffold> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    Shop(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: BottomNavigationScaffold.scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30,
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 146, 69),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 55,
                left: 20,
                //right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    NotificationBanner(
                      message: 'Your order has been shipped',
                      msgicon: Icons.shopping_bag_outlined,
                    ),
                    SizedBox(height: 10),
                    NotificationBanner(
                      message: 'Appointment request accepted',
                      msgicon: Icons.done,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: _pages[selectedIndex], // Corrected usage
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.reactCircle,
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: const Color.fromARGB(255, 245, 146, 69),
        height: 55,
        elevation: 3,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.shopping_cart, title: 'Shop'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
