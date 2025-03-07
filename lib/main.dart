import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:pet_guardian/const.dart';
import 'package:pet_guardian/provider/cart_provider.dart';
import 'package:pet_guardian/provider/bottom_navigation_provider.dart';
import 'package:pet_guardian/provider/user_provider.dart';
import 'package:pet_guardian/screens/authentication/login.dart';
import 'package:pet_guardian/screens/bottom_navigation_scaffold.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  await _setup();
  runApp(const MyApp());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Stripe.publishableKey = publishableKey;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => BottomNavigationProvider()),
      ],
      child: MaterialApp(
        title: 'Pet Guardian',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 245, 146, 69),
          ),
          useMaterial3: true,
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              return const BottomNavigationScaffold();
            }
            return const LoginScreen();
          },
        ),
      ),
    );
  }
}
