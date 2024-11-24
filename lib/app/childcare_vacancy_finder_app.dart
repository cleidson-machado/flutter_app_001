// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/view/contact_form.dart';
import 'package:my_view_app_001/app/view/contact_list.dart';

//THIS GUY DEFINES THEME AND REDIRECT TO THE MAIN PAGE.. AND ALL ROUTES HERE!!

class ChildcareVacancyFinderApp extends StatelessWidget {
  const ChildcareVacancyFinderApp({super.key});

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
        HOME: (context) => const ContactList(),
        CONTACT_FORM: (context) => const ContactForm(),
      },
    );
  }
}