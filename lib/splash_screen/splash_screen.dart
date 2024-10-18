import 'dart:async';
import 'package:flutter/material.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash" ;
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ),
          );
        });
    var mediaQuery = MediaQuery.of(context).size ;
    return Scaffold(
      body: Image.asset("assets/images/Color_Mat11te_1.gif",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
