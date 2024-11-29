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
  List<Concelho> concelhos = [];
  List<Freguesia> freguesias = [];
  Distrito? selectedDistrito; //ESTADO
  Concelho? selectedConcelho; //MUNICÍPIO
  Freguesia? selectedFreguesia; //BAIRRO
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadJsonDataToDistrito();
    loadJsonDataToConcelho();
    loadJsonDataToFreguesia(); // Load JSON when the app starts
  }

  // Load and parse JSON data to Distrito
  Future<void> loadJsonDataToDistrito() async {
    try {
      final String response = await rootBundle.loadString('assets/data_distrito.json');
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

  // Load and parse JSON data to Concelho
  Future<void> loadJsonDataToConcelho() async {
    try {
      final String response = await rootBundle.loadString('assets/data_concelho.json');
      final List<dynamic> data = json.decode(response);
    setState(() {
      concelhos = data.map((item) => Concelho.fromJson(item)).toList();
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

  // Load and parse JSON data to Freguesia
  Future<void> loadJsonDataToFreguesia() async {
    try {
      final String response = await rootBundle.loadString('assets/data_freguesia.json');
      final List<dynamic> data = json.decode(response);
    setState(() {
      freguesias = data.map((item) => Freguesia.fromJson(item)).toList();
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
              items: distritos.map((distrito) {
                return DropdownMenuItem(
                  value: distrito,
                  child: Text(distrito.descDistrito as String)
                  );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDistrito = value;
                  //selectedConcelho = [value] as Concelho?;
                  //selectedFreguesia= null;
                });
              },
            ),

            const SizedBox(height: 26),

            DropdownButton<Concelho>(
              value: selectedConcelho,
              hint: const Text('Selecione o Conselho'),
              isExpanded: true,
              items: concelhos.map((conselho){
                return DropdownMenuItem(
                  value: conselho,
                  child: Text(conselho.dscConcelho as String)
                  );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedConcelho = value;
                  //selectedFreguesia= null;
                });
              },
            ),

            const SizedBox(height: 26),

            DropdownButton<Freguesia>(
              value: selectedFreguesia,
              hint: const Text('Selecione a Freguesia'),
              isExpanded: true,
              items: freguesias.map((freguesia){
                return DropdownMenuItem(
                  value: freguesia,
                  child: Text(freguesia.dscFreguesia as String)
                  );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedFreguesia = value;
                  //selectedFreguesia= null;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
