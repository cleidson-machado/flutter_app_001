import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

class ButtonContainerAuthGovPt extends StatelessWidget {
  final VoidCallback press;
  const ButtonContainerAuthGovPt({super.key, required this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      width: size.width *.9,
      height: 85,
      decoration: BoxDecoration(
        color: defaultGreyButtonFndColor,
        borderRadius: BorderRadius.circular(1)
      ),

      child: TextButton(
          onPressed: press, 
          // child: const Text('xxxxx')
          child: Image.asset("assets/images/AuthGovPTNewStyle.png", fit: BoxFit.contain, width:  275),
        
        ),

    );
  }
}