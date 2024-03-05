//import 'package:firstpages/widgets/AppButtons.dart';
//import 'package:firstpages/widgets/AppTextfield.dart';
import 'package:flutter/material.dart';
import 'package:interfaces/widgets/appbuttons.dart';
import 'package:interfaces/widgets/apptextfield.dart';
import 'forgetmypass.dart'; 
//Import the Forgetmypass page

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black), // Adjust icon color
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor:
              Colors.grey[200], // Customize app bar background color
        ),
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Log in to your account",
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  apptextfield(hintText: " Email address", icon: Icons.person),
                  SizedBox(
                    height: 23,
                  ),
                  apptextfield(hintText:"Password",
                    icon: Icons.lock_outline_rounded,),

                  SizedBox(
                    height: 30,
                  ),
                  appbuttons(//width: 400,
                    //height: 50,
                    //textColor: Colors.white,
                    // backgroundColor:  Color(0xFF2F66F5) ,
                    text: "LogIn",
                    routeName: '/',borderColor:Color(0xFF2F66F5), backgroundColor: Color(0xFF2F66F5), ),
                   SizedBox(
                    height: 20,
                  ),
                  appbuttons(borderColor:Color(0xFF2F66F5), text: "Sign Up",textColor: Color(0xFF2F66F5) ,routeName: '/',backgroundColor:Colors.white,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Button to navigate to Forgetmypass page
                  TextButton(
                    onPressed: () {
                     Navigator.push(
                        context,
                       MaterialPageRoute(builder: (context) => Forgetmypass()),
                      );
                    },
                    child: Text(
                     "Forget your password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}