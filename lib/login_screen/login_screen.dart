import 'package:flutter/material.dart';
import '../custom_field/text_filed.dart';
import '../home_screen/home_screen.dart';
import '../register_screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  static const String routeName = "Login" ;

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
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Welcome To OutBye",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  const Text("Please sign in with your email",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  CustomField(
                    text: 'User Name',
                    controller: nameController,
                    icon: Icons.person,
                    hint: 'Enter Your Name',
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
                  CustomField(
                    controller: passwordController,
                    text: 'Password',
                    password: true,
                    icon: Icons.remove_red_eye,
                    hint: 'Enter Your Password',
                    type: TextInputType.visiblePassword,
                    action: TextInputAction.done,
                    validator:(value){
                      if(value == null || value.isEmpty){
                        return "Password is required" ;
                      }
                      return null ;
                    },
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: (){},
                    child:  const Text("Forget Password ?",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        )
                    ),
                    child: const Text("Login",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(RegisterScreen.routeName);
                    },
                    child:  const Text("Don't have an account? Create Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

