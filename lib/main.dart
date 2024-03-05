import 'package:flutter/material.dart';
import 'package:interfaces/pages/Userinterface.dart';
import 'package:interfaces/pages/forgetmypass.dart';
import 'package:interfaces/pages/login.dart';
import 'package:interfaces/pages/signup.dart';
import 'package:interfaces/pages/welcome.dart';
// Import User_main_interface
//import 'package:interfaces/pages/user_main_interface.dart'; 

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/" ,
      routes: {
        "/" : (context) => const Welcome(),
        "/login" : (context) => const Login(),
        "/signup" : (context) => const Signup(),
        "/Forgetmypass": (context) => const Forgetmypass(),
        "/Userinterface" : (context) => const Userinterface(),
      },
    );
  }
}
