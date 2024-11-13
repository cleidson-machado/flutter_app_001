import 'package:flutter/material.dart';
import 'package:my_view_app_001/views/stages/01_login/login_view.dart';
// import 'package:my_view_app_001/views/stages/02_main_home/main_home_view.dart';

void main() {
  runApp(const MyDaycareApp());
}

class MyDaycareApp extends StatelessWidget {
  const MyDaycareApp({super.key});

    @override
  Widget build(BuildContext context) {
    //return const MyAppLoginLegacyView(); //## Ok!.. This view Page rendering returns OK! 10-27-20204
    return const LoginPage();
    // return const MainAppPage();
  }
}




