import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Formulário de Contatos', style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white)), 
          ),
          body: ListView(),
    );
  }
}