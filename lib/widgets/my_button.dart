import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;
  const MyButton({
  super.key, 
  required this.text, 
  required this.color, 
 this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color
        ),
        child: Center(child: Text(text, style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}