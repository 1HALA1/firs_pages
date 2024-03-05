import 'package:flutter/material.dart';

class apptextfield extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final Color iconColor;
  final double width;
  final double height;

  const apptextfield({
    Key? key,
    required this.hintText,
    this.icon,
    this.iconColor = Colors.blue, // Default icon color is blue
    this.width = 400.0,
    this.height = 40.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Set text field background color to white
          borderRadius: BorderRadius.circular(8.0), // Set text field border radius
          boxShadow: [ // Add a little shadow
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Set shadow color and opacity
              spreadRadius: 2, // Set spread radius
              blurRadius: 3, // Set blur radius
              offset: Offset(0, 2), // Offset of the shadow
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.8)), // Set hint text color to grey
            prefixIcon: icon != null ? Icon(
              icon,
              color: iconColor, // Set icon color
            ) : null, // If icon is null, don't display prefix icon
            filled: true,
            fillColor: Colors.white, // Set text field background color to white
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0), // Set text field border radius
              borderSide: BorderSide.none, // Remove text field border
            ),
            contentPadding: EdgeInsets.all(12.0), // Set text field content padding
          ),
        ),
      ),
    );
  }
}