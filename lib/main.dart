import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_view_app_001/api_env/api_enviroment.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_app.dart';

//THIS GUY DEFINES THE START OF PROJECT

Future <void> main() async {
  await dotenv.load(fileName: ApiEnviroment.fileName);
  runApp(const ChildcareVacancyFinderApp());
}


