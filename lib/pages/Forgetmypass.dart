// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:interfaces/widgets/appbuttons.dart';
import 'package:interfaces/widgets/apptextfield.dart';

class Forgetmypass extends StatelessWidget {
  const Forgetmypass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
      leading:IconButton( icon:Icon(Icons.arrow_back),
      onPressed:()=> Navigator.pop(context),),
      backgroundColor: Colors.grey[200],),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Password Reset',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please enter your registered email address to reset your password',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40),
            apptextfield(hintText: "email address",icon:Icons.email),
            SizedBox(height: 50),
           appbuttons(text: "Continuo", routeName: '/'),
          ],
        ),
      ),
    );
  }
}