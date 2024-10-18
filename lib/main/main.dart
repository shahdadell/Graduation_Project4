import 'package:flutter/material.dart';
import 'package:graduation_project/splash_screen/splash_screen.dart';
import '../home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';
import '../register_screen/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RegisterScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen() ,
        LoginScreen.routeName : (context) =>  LoginScreen(),
        RegisterScreen.routeName : (context) =>  RegisterScreen(),
        HomeScreen.routeName : (context) => const HomeScreen(),
      },
    );
  }
}

