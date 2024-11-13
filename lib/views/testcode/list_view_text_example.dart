import 'package:flutter/material.dart';

void main() {
  runApp(const MyListExample());
}

class MyListExample extends StatelessWidget {
  const MyListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContractAgreementPage(),
    );
  }
}

class ContractAgreementPage extends StatelessWidget {
  final String contractText = '''A man opens a bank account to save money for his future and plans to invest in the stock market to grow his wealth and achieve financial stability while also setting aside funds for emergencies and major life events such as buying a house, getting married, and starting a family.
    ''';

  const ContractAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contract Agreement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(46.0),
        child: ListView(
          children: [
            Text(
              contractText,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
