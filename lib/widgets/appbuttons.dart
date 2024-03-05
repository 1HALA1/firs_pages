import 'package:flutter/material.dart';

class appbuttons extends StatelessWidget {
  final Color? textColor; // Make text color optional
  final Color? backgroundColor; // Make background color optional
  final String text;
  final String routeName;
  final Color borderColor; // Add borderColor parameter

  appbuttons({
    Key? key,
    this.textColor, // Make textColor optional
    this.backgroundColor, // Make backgroundColor optional
    required this.text,
    required this.routeName,
    this.borderColor = const Color(0xFF2F66F5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 40,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white, // Use textColor if provided, otherwise fallback to default color
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor ?? Color(0xFF2F66F5), // Use backgroundColor if provided, otherwise fallback to default color
        border: Border.all(width: 1, color: borderColor), // Apply borderColor
      ),
    );
  }
}
