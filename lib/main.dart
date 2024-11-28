import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: CascadingDropdown(),
  ));
}

class CascadingDropdown extends StatefulWidget {
  const CascadingDropdown({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CascadingDropdownState createState() => _CascadingDropdownState();
}

class _CascadingDropdownState extends State<CascadingDropdown> {
  List<Distrito> distritos = [];
  Distrito? selectedDistrito;
  Concelho? selectedConcelho;
  Freguesia? selectedFreguesia;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    try {
      final String response = await rootBundle.loadString('assets/data.json');
      final List<dynamic> data = json.decode(response); // Top-level is a List
      setState(() {
        distritos = data.map((item) => Distrito.fromJson(item)).toList();
        isLoading = false;
      });
    } catch (e) {
      print('Error loading JSON: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Cascading Dropdowns')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Distrito Dropdown
            DropdownButton<Distrito>(
              value: selectedDistrito,
              hint: const Text('Select Distrito'),
              isExpanded: true,
              items: distritos.map((distrito) {
                return DropdownMenuItem(
                  value: distrito,
                  child: Text(distrito.descDistrito),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDistrito = value;
                  selectedConcelho = null;
                  selectedFreguesia = null;
                });
              },
            ),
            const SizedBox(height: 16),

            // Concelho Dropdown
            DropdownButton<Concelho>(
              value: selectedConcelho,
              hint: const Text('Select Concelho'),
              isExpanded: true,
              items: selectedDistrito?.concelhos.map((concelho) {
                return DropdownMenuItem(
                  value: concelho,
                  child: Text(concelho.dscConcelho),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedConcelho = value;
                  selectedFreguesia = null;
                });
              },
            ),
            const SizedBox(height: 16),

            // Freguesia Dropdown
            DropdownButton<Freguesia>(
              value: selectedFreguesia,
              hint: const Text('Select Freguesia'),
              isExpanded: true,
              items: selectedConcelho?.freguesias?.map((freguesia) {
                return DropdownMenuItem(
                  value: freguesia,
                  child: Text(freguesia.dscFreguesia),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedFreguesia = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Display Selected Values
            if (selectedDistrito != null)
              Text('Distrito: ${selectedDistrito!.descDistrito}'),
            if (selectedConcelho != null)
              Text('Concelho: ${selectedConcelho!.dscConcelho}'),
            if (selectedFreguesia != null)
              Text('Freguesia: ${selectedFreguesia!.dscFreguesia}'),
          ],
        ),
      ),
    );
  }
}

// Dart Models
class Distrito {
  final int idDistrito;
  final String descDistrito;
  final List<Concelho> concelhos;

  Distrito({
    required this.idDistrito,
    required this.descDistrito,
    required this.concelhos,
  });

  factory Distrito.fromJson(Map<String, dynamic> json) {
    return Distrito(
      idDistrito: json['idDistrito'],
      descDistrito: json['descDistrito'],
      concelhos: (json['concelhos'] as List)
          .map((concelho) => Concelho.fromJson(concelho))
          .toList(),
    );
  }
}

class Concelho {
  final int idConcelho;
  final String dscConcelho;
  final List<Freguesia>? freguesias;

  Concelho({
    required this.idConcelho,
    required this.dscConcelho,
    this.freguesias,
  });

  factory Concelho.fromJson(Map<String, dynamic> json) {
    return Concelho(
      idConcelho: json['idConcelho'],
      dscConcelho: json['dscConcelho'],
      freguesias: json['freguesias'] != null
          ? (json['freguesias'] as List)
              .map((freguesia) => Freguesia.fromJson(freguesia))
              .toList()
          : null,
    );
  }
}

class Freguesia {
  final int idFreguesia;
  final String dscFreguesia;

  Freguesia({
    required this.idFreguesia,
    required this.dscFreguesia,
  });

  factory Freguesia.fromJson(Map<String, dynamic> json) {
    return Freguesia(
      idFreguesia: json['idFreguesia'],
      dscFreguesia: json['dscFreguesia'],
    );
  }
}
