import 'package:flutter/material.dart';
import 'package:mobiledev_final_project/pages/HomePage.dart';
import 'package:mobiledev_final_project/mixin/ValidationMixin.dart';
import 'package:mobiledev_final_project/widgets/PasswordField.dart';
import '../widgets/EmailField.dart';
import '../widgets/PrimaryButton.dart';

class Login extends StatefulWidget {
  

  static const String routeName = "login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with ValidationMixin{

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  bool obscureText = true;
  @override

  Widget build(BuildContext context) {
    setState(() {});
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    EmailField(
                      labelText: "Email Address", 
                      hintText: "Enter Email Address", 
                      iconData: Icons.email, 
                      textEditingController: emailTextController, 
                      textInputType: TextInputType.emailAddress,
                      validation: validateEmail,
                    ),

                    SizedBox(
                      height: 15.0,
                    ),
                    PasswordField(
                      labelText: "Password", 
                      hintText: "Enter Your Password", 
                      iconData: Icons.lock, 
                      textEditingController: passwordTextController, 
                      obscureText: obscureText, 
                      onTap: setPassswordVisibility,
                      validation: validatePassword,
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                      text: "Login", 
                      iconData: Icons.login, 
                      onPress: () {
                        validateLogin(context);
                        emailTextController.clear();
                        passwordTextController.clear();
                      }
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ),
      )
    );
  }

  void setPassswordVisibility(){
    setState(() {
      obscureText = !obscureText;
    });
  }

  void navigateToHomePage(BuildContext context){
    Navigator.pushNamed(context, HomePage.routeName);
  }

  void validateLogin(context){
    if(formKey.currentState.validate()){
      navigateToHomePage(context);
    } else {
      print("Invalid");
    }
  }

}