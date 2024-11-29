// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:convert'; // For JSON decoding
import 'package:flutter/services.dart';
import 'package:my_view_app_001/geo_places/a_distrito.dart';
import 'package:my_view_app_001/geo_places/b_concelho.dart';
import 'package:my_view_app_001/geo_places/c_freguesia.dart'; // For loading asset

void main() {
  runApp(const MaterialApp(
    home: DropdownWithJson(),
  ));
}

class DropdownWithJson extends StatefulWidget {
  const DropdownWithJson({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DropdownWithJsonState createState() => _DropdownWithJsonState();
}

class _DropdownWithJsonState extends State<DropdownWithJson> {
  List<Distrito> distritos = [];
  Distrito? selectedDistrito; //ESTADO
  Concelho? selectedConselho; //MUNICÍPIO
  Freguesia? selectedFreguesia; //BAIRRO
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadJsonData(); // Load JSON when the app starts
  }

  // Load and parse JSON data
  Future<void> loadJsonData() async {
    try {
      final String response = await rootBundle.loadString('assets/dataplus.json');
      final List<dynamic> data = json.decode(response);
    setState(() {
      distritos = data.map((item) => Distrito.fromJson(item)).toList();
      isLoading = false;
    });
    print('JSON FILE LOAD SUCCESSFULLY');
    } catch (e) {
      print('Error Loading Json: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown with JSON'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(56.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            DropdownButton<Distrito>(
              value: selectedDistrito,
              hint: const Text('Selecione o Distrito'),
              isExpanded: true,
              items: distritos.map((distrito){
                return DropdownMenuItem(
                  value: distrito,
                  child: Text(distrito.descDistrito as String)
                  );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDistrito = value;
                  selectedConselho = [value] as Concelho?;
                  selectedFreguesia= null;
                });
              },
            ),

            const SizedBox(height: 26),

            DropdownButton<Distrito>(
              value: selectedDistrito,
              hint: const Text('Selecione o Conselho'),
              isExpanded: true,
              items: distritos.map((distrito){
                return DropdownMenuItem(
                  value: distrito,
                  child: Text(distrito.descDistrito as String)
                  );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDistrito = value;
                  selectedConselho = [value] as Concelho?;
                  selectedFreguesia= null;
                });
              },
            ),

            const SizedBox(height: 26),

            DropdownButton<Distrito>(
              value: selectedDistrito,
              hint: const Text('Selecione o Freguesia'),
              isExpanded: true,
              items: distritos.map((distrito){
                return DropdownMenuItem(
                  value: distrito,
                  child: Text(distrito.descDistrito as String)
                  );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDistrito = value;
                  selectedConselho = [value] as Concelho?;
                  selectedFreguesia= null;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
