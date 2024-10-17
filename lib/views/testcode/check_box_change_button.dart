import 'package:flutter/material.dart';

void main() {
  runApp(const CheckBoxActionExampleApp());
}

class CheckBoxActionExampleApp extends StatelessWidget {
  const CheckBoxActionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
 return const MaterialApp(
      home: CheckboxButtonExample(),
    );
  }
}

class CheckboxButtonExample extends StatefulWidget {
  const CheckboxButtonExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  State <CheckboxButtonExample> createState() => _CheckboxButtonExampleState();
}

class _CheckboxButtonExampleState extends State<CheckboxButtonExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: const Text('Aceito TODOS os Termos e Condições!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
               subtitle: const Text('Lembre-se a sua aceitação é irrevogável'),
               controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isChecked ? () {
                // Perform action here
                // ignore: avoid_print
                print('Button Pressed');
              } : null, // Button is disabled when isChecked is false
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
