import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_routes_app.dart';

//THIS GUY IS ONLY A SIMPLE LIST PAGE

class ChildcareList extends StatelessWidget {
  const ChildcareList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Lista de Creches', style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).pushNamed(RoutesLib.CONTACT_FORM);
        }, 
        icon: const Icon(Icons.add))],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(),
    );
  }
}