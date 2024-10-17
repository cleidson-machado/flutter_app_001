import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

class ButtonDefaultA extends StatelessWidget {
  final String label;
  final VoidCallback press;
  const ButtonDefaultA({super.key, required this.label, required this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      width: size.width *.9,
      height: 55,
      decoration: BoxDecoration(
        color: buttonEnableColor,
        borderRadius: BorderRadius.circular(8)
      ),

      child: TextButton(
        onPressed: press, 
        child: Text(label, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)),

    );
  }
}