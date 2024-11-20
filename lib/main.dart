import 'package:flutter/material.dart';
import 'package:my_view_app_001/presentation/home/vacancy_home_page.dart';

void main() {
  runApp(const VagaAppModule());
}

class VagaAppModule extends StatelessWidget {
  const VagaAppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vaga Module',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const VacancyHomePage(),
    );
  }
}
