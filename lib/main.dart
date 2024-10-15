import 'package:flutter/material.dart';
import 'package:my_view_app_001/views/daycare_index_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: DaycareIndexView()
        ),
      ),
    );
  }
}

