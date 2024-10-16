import 'package:flutter/material.dart';
import 'package:my_view_app_001/views/daycare_index_view.dart';

void main() {
  runApp(const MyDaycareApp());
}

class MyDaycareApp extends StatelessWidget {
  const MyDaycareApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DaycareIndexView(),
    );
  }
}




