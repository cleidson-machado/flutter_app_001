// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/view/childcare_form.dart';
import 'package:my_view_app_001/app/view/childcare_list.dart';

//THIS GUY DEFINES A BASIC THEME FOR ALL APP AND REDIRECT TO THE MAIN PAGE.. 
//AND ALL ROUTES FOR THE APP!!

class ChildcareVacancyFinderApp extends StatelessWidget {
  const ChildcareVacancyFinderApp({super.key});

  //HERE ALL APP ROUTES #################################
  static const HOME = '/';
  static const CONTACT_FORM = 'contact-form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME: (context) => const ChildcareList(),
        CONTACT_FORM: (context) => const ChildcareForm(),
      },
    );
  }
}