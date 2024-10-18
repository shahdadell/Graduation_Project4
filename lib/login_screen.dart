import 'package:flutter/material.dart';

import 'custom_field/text_filed.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "HomeScreen" ;
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery2 = MediaQuery.of(context).size ;
    return Stack(
      children: [
        Image.asset("assets/images/back.jpg",
          width: mediaQuery2.width,
          height: mediaQuery2.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Welcome To OutBye",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Please sign in with your email",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text("User Name",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10),
                CustomField(
                  icon: Icons.person,
                  hint: "Enter Your Name Here",
                  type: TextInputType.name,
                  action: TextInputAction.done,
                  validator:(value){
                    if(value == null || value.isEmpty){
                      return "Name is required" ;
                    }
                    return null ;
                  },
                ),
                const SizedBox(height: 20),
                const Text("Password",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10),
                CustomField(
                  icon: Icons.password,
                  hint: "Enter Your Password",
                  type: TextInputType.visiblePassword,
                  action: TextInputAction.done,
                  validator:(value){
                    if(value == null || value.isEmpty){
                      return "Name is required" ;
                    }
                    return null ;
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

