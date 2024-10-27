import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

void main() {
  runApp(const MyAppLoginLegacyViewUsingMaterial());
}

// Fist Step Creating the Context! What this one exactly due here!
class MyAppLoginLegacyViewUsingMaterial extends StatelessWidget {
  const MyAppLoginLegacyViewUsingMaterial({super.key});

// Second Step ##################################################
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'ISS - Instituto da Segurança Social';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
          backgroundColor: defaultGreenButtonColor,
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

