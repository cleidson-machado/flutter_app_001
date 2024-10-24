import 'package:flutter/material.dart';
import 'package:my_view_app_001/views/daycare_index.dart';
// import 'package:my_view_app_001/views/daycare_client_view.dart';
// import 'package:my_view_app_001/views/daycare_index.dart';
// import 'package:my_view_app_001/views/testcode/list_view_text_example.dart';
import 'package:my_view_app_001/views/testcode/list_view_text_example2.dart';
// import 'package:my_view_app_001/views/testcode/check_box_change_button.dart';

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
      // home: const MyListExample2()
      // home: const DayCareClientView()
       home: const DaycareIndexView(),
      // home: const CheckBoxActionExampleApp(),
    );
  }
}




