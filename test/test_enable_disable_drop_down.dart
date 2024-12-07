import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Disable Dropdown Example')),
        body: const DisableDropdownExample(),
      ),
    );
  }
}

class DisableDropdownExample extends StatefulWidget {
  const DisableDropdownExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DisableDropdownExampleState createState() => _DisableDropdownExampleState();
}

class _DisableDropdownExampleState extends State<DisableDropdownExample> {
  String? _selectedItem;
  bool _isDropdownEnabled = true;

  final List<String> _choices = ['Option 1', 'Incorrect Option', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButtonFormField<String>(
            value: _selectedItem,
            decoration: const InputDecoration(
              labelText: 'Select an option',
              border: OutlineInputBorder(),
            ),
            items: _choices.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: _isDropdownEnabled
                ? (newValue) {
                    setState(() {
                      _selectedItem = newValue;

                      // Disable dropdown if incorrect option is selected
                      if (newValue == 'Incorrect Option') {
                        _isDropdownEnabled = false;
                      }
                    });
                  }
                : null,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Re-enable dropdown and reset selection
                _isDropdownEnabled = true;
                _selectedItem = null;
              });
            },
            child: const Text('Reset Dropdown'),
          ),
        ],
      ),
    );
  }
}
