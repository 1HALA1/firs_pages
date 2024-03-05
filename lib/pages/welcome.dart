//import 'package:firstpages/widgets/AppButtons.dart';
import 'package:flutter/material.dart';
import 'package:interfaces/widgets/appbuttons.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://www.geetest.com/_next/static/images/hero-img-c9ec5ee131d8bc0d79d5a556632dff00.png',
            ),
            SizedBox(height: 40),
            Text(
              "Protect Your Lab",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            SizedBox(
              child: appbuttons(//width: 400,
                //height: 40,
                //textColor: Colors.white,
                //backgroundColor: Color(0xFF2F66F5),
                text: "NEXT",
                routeName: '/signup'),
            ),
          ],
        ),
      ),
    );
  }
}