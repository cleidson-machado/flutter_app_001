import 'package:flutter/material.dart';

class ChildcareForm extends StatelessWidget {
  const ChildcareForm({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Formulário de Pedidos', style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white)),
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: ListView(),
    );
  }
}