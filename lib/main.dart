import 'package:flutter/material.dart';
import 'package:my_view_app_001/views/daycare_index_view.dart';
// import 'package:my_view_app_001/views/testcode/elevated_button.dart';

void main() {
  runApp(const MyAppBackup());
}

class MyAppBackup extends StatelessWidget {
  const MyAppBackup({super.key});

  
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
      // home: const ElevatedButtonExampleApp(),
    );
  }
}




