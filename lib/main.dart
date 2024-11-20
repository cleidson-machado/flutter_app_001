import 'package:flutter/material.dart';
import 'package:my_view_app_001/presentation/home/vacancy_home_page.dart';
import 'package:my_view_app_001/shared/components/app_shared_text_rotules.dart';

void main() {
  runApp(const VagaAppModule());
}

class VagaAppModule extends StatelessWidget {
  const VagaAppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const VacancyHomePage(title: appModuleTitle,),
    );
  }
}
