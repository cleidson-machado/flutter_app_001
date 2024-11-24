import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_app.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Lista de Contatos', style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).pushNamed(ChildcareVacancyFinderApp.CONTACT_FORM);
        }, icon: const Icon(Icons.add))],
      ),
      body: ListView(),
    );
  }
}