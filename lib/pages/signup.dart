import 'package:flutter/material.dart';
// Import from the correct package
import 'package:interfaces/widgets/appbuttons.dart';
import 'package:interfaces/widgets/apptextfield.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            backgroundColor: Colors.grey[200],
          ),
          body: Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hello!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Center(
                    child: apptextfield(hintText: "username", icon: Icons.person),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Center(
                    child: apptextfield(hintText: "Enter your email address", icon: Icons.email_outlined),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  apptextfield(hintText: "enter your password", icon: Icons.lock_outline_rounded),
                  SizedBox(
                    height: 23,
                  ),
                  apptextfield(hintText: "Confirm your password", icon: Icons.lock_outline_rounded),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Are you a manager?"),
                      Switch(
                        value: false,
                        onChanged: (bool newValue) {
                          // Handle switch state changes
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  appbuttons(
                    text: "signup",
                    routeName: '/', backgroundColor:Color(0xFF2F66F5),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          " Log in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                 
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 27),
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
