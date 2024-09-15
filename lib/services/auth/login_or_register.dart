import 'package:flutter/material.dart';
import 'package:idairy/pages/login_page.dart';
import 'package:idairy/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool showLoginPage = true;

  void togglePages(){
   setState(() {
     showLoginPage = !showLoginPage;
   }); 
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(
        onTap: togglePages,
      );
    }
    else{
      RegisterPage(
        onTap: togglePages,
      );
    }
    return RegisterPage(
      onTap: togglePages,
    );
  }
}