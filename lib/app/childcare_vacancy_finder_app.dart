// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_routes_app.dart';
import 'package:my_view_app_001/app/view/childcare_vacancy_order_form.dart';
import 'package:my_view_app_001/app/view/childcare_list.dart';

//THIS GUY DEFINES A BASIC THEME FOR ALL APP AND REDIRECT TO THE MAIN PAGE.. 

class ChildcareVacancyFinderApp extends StatelessWidget {
  const ChildcareVacancyFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardTheme: const CardTheme(color: Colors.white10),
        useMaterial3: true,
      ),
      routes: {
        RoutesLib.HOME: (context) => const ChildcareList(),
        RoutesLib.ORDER_VACANCY_FORM: (context) => const ChildcareVacancyOrderForm(),
      },
    );
  }
}