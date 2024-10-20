import 'package:flutter/material.dart';
import '../custom_field/text_filed.dart';
import '../home_screen/home_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "RegisterScreen";
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var confirmPassController = TextEditingController();
  var formKey = GlobalKey<FormState>();

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
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Form(
                key: formKey,
                child:
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image.asset("assets/images/bb.png",
                        ),
                      ),
                      const SizedBox(height: 35),
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
                          bool emailValid =
                          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);
                          if(!emailValid){
                            return 'PLease Enter Valid Email' ;
                          }
                          return null ;
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomField(
                        controller: passwordController,
                        text: 'Password',
                        icon: Icons.remove_red_eye,
                        hint: 'Enter Your Password',
                        type: TextInputType.visiblePassword,
                        action: TextInputAction.done,
                        validator:(value){
                          if(value == null || value.isEmpty){
                            return "Password is required" ;
                          }
                          if(value.length<6){
                            return "Password Should Be At Least 6 Chars" ;
                          }
                          return null ;
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomField(
                        password: true,
                        controller: confirmPassController,
                        text: 'Confirmation Password',
                        icon: Icons.remove_red_eye,
                        hint: 'Enter Your Password',
                        type: TextInputType.visiblePassword,
                        action: TextInputAction.done,
                        validator:(value){
                          if(value == null || value.isEmpty){
                            return "Confirmation Password is required" ;
                          }
                          if(value != passwordController.value){
                            return "Password Doesn't Match" ;
                          }
                          return null ;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: (){
                          register();                    },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            )
                        ),
                        child: const Text("Register",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
  void register(){
    if(formKey.currentState?.validate() == true ){

    }
  }
}
