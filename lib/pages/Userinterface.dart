import 'package:flutter/material.dart';
import 'package:interfaces/widgets/appbuttons.dart';
class Userinterface extends StatelessWidget {
  const Userinterface({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.grey[200],
          ),
 body: Column(
   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://www.geetest.com/_next/static/images/hero-img-c9ec5ee131d8bc0d79d5a556632dff00.png',
            ),
            SizedBox(height: 30),
            SizedBox(
              child: appbuttons(//width: 400,
                //height: 40,
                //textColor: Colors.white,
                //backgroundColor: Color(0xFF2F66F5),
                text: "Request Authentication",
                routeName: '/login',),
            ),
            SizedBox(height: 40),
            
            SizedBox(
              child: appbuttons(//width: 400,
                //height: 40,
                //textColor: Colors.white,
                //backgroundColor: Color(0xFF2F66F5),
                text: "Log Out",
                routeName: '/login',),
            ),
            
            ]
 ),

          ),
      


    );

    
  }
}