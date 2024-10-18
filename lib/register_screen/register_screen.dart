import 'package:flutter/material.dart';
import '../custom_field/text_filed.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "RegisterScreen";
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery2 = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/back.jpg",
          width: mediaQuery2.width,
          height: mediaQuery2.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            child:
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomField(
                    controller: nameController,
                    text: 'User Name',
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
                    controller: emailController,
                    text: 'E-mail',
                    icon: Icons.mail,
                    hint: 'Enter Your Password',
                    type: TextInputType.emailAddress,
                    action: TextInputAction.done,
                    validator:(value){
                      if(value == null || value.isEmpty){
                        return "E-mail is required" ;
                      }
                      return null ;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomField(
                    controller: passwordController,
                    text: 'Password',
                    icon: Icons.password_rounded,
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
                  const SizedBox(height: 20),
                  CustomField(
                    password: true,
                    controller: confirmPassController,
                    text: 'Confirmation Password',
                    icon: Icons.password_rounded,
                    hint: 'Enter Your Password',
                    type: TextInputType.visiblePassword,
                    action: TextInputAction.done,
                    validator:(value){
                      if(value == null || value.isEmpty){
                        return "Confirmation Password is required" ;
                      }
                      return null ;
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
