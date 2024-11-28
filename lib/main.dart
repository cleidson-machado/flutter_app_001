import 'package:flutter/material.dart';
import 'dart:convert'; // For JSON decoding
import 'package:flutter/services.dart'; // For loading asset

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
  Map<String, List<String>> categoryData = {}; // Data from JSON file
  String? selectedCategory; // Selected value for the first dropdown
  String? selectedItem; // Selected value for the second dropdown
  List<String> subItems = []; // Items for the second dropdown

  @override
  void initState() {
    super.initState();
    loadJsonData(); // Load JSON when the app starts
  }

  // Load and parse JSON data
  Future<void> loadJsonData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final Map<String, dynamic> data = json.decode(response);
    setState(() {
      categoryData = data.map((key, value) =>
          MapEntry(key, List<String>.from(value))); // Parse data
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown with JSON'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Dropdown
            DropdownButton<String>(
              value: selectedCategory,
              hint: const Text('Select Category'),
              isExpanded: true,
              items: categoryData.keys.map((category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value;
                  subItems = categoryData[value]!; // Update subItems
                  selectedItem = null; // Reset second dropdown
                });
              },
            ),
            const SizedBox(height: 16),
            // Second Dropdown
            DropdownButton<String>(
              value: selectedItem,
              hint: const Text('Select Item'),
              isExpanded: true,
              items: subItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
            ),
            const SizedBox(height: 16),
            // Display Selected Data
            if (selectedCategory != null && selectedItem != null)
              Text(
                'Selected: $selectedCategory -> $selectedItem',
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
