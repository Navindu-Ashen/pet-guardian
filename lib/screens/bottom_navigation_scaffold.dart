import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pet_guardian/provider/bottom_navigation_provider.dart';
import 'package:pet_guardian/provider/user_provider.dart';
import 'package:pet_guardian/screens/authentication/login.dart';
import 'package:pet_guardian/screens/home/home.dart';
import 'package:pet_guardian/screens/profile/profile.dart';
import 'package:pet_guardian/screens/shop/shop.dart';
import 'package:pet_guardian/widgets/notification_banner.dart';
import 'package:provider/provider.dart';

class BottomNavigationScaffold extends StatefulWidget {
  const BottomNavigationScaffold({super.key});

  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  State<BottomNavigationScaffold> createState() =>
      _BottomNavigationScaffoldState();
}

class _BottomNavigationScaffoldState extends State<BottomNavigationScaffold> {
  final List<Widget> _pages = [
    Shop(),
    HomeScreen(),
    Profile(),
  ];

  @override
  void initState() {
    _initializeUserInfo();
    super.initState();
  }

  Future<void> _initializeUserInfo() async {
    try {
      context.read<UserProvider>().getUserData();
    } catch (e) {
      context.read<UserProvider>().logout();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.watch<BottomNavigationProvider>().selectedIndex;
    final userProvider = context.watch<UserProvider>();
    final screenSize = MediaQuery.of(context).size;

    return userProvider.isLoading
        ? Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: screenSize.width * 0.3,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: screenSize.width * 0.3,
                    child: LinearProgressIndicator(
                      color: Color.fromARGB(255, 245, 146, 69),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
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
            body: _pages[selectedIndex],
            bottomNavigationBar: ConvexAppBar(
              style: TabStyle.reactCircle,
              backgroundColor: Colors.white,
              color: Colors.grey,
              activeColor: const Color.fromARGB(255, 245, 146, 69),
              height: 55,
              elevation: 3,
              items: const [
                TabItem(icon: Icons.shopping_cart, title: 'Shop'),
                TabItem(icon: Icons.home, title: 'Home'),
                TabItem(icon: Icons.person, title: 'Profile'),
              ],
              initialActiveIndex: selectedIndex,
              onTap: (int index) {
                context.read<BottomNavigationProvider>().updateIndex(index);
              },
            ),
          );
  }
}
