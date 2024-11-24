import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/view/my_original_counter_home_page.dart';

//THIS GUY DEFINES THEME AND REDIRECT TO THE MAIN PAGE

class ChildcareVacancyFinderApp extends StatelessWidget {
  const ChildcareVacancyFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyOriginalCounterHomePage(title: 'Aula Flutter'),
    );
  }
}