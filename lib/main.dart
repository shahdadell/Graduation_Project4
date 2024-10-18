import 'package:flutter/material.dart';
import 'package:graduation_project/splash_screen/splash_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen() ,
        LoginScreen.routeName : (context) => const LoginScreen(),
      },
    );
  }
}

