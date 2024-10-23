import 'package:flutter/material.dart';

// Great We Have a Option to Use With Large Text... 10-23-2024

void main() {
  runApp(const MyListExample2());
}

class MyListExample2 extends StatelessWidget {
  const MyListExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContractAgreementPage(),
    );
  }
}

class ContractAgreementPage extends StatelessWidget {
  final String contractText = '''
    A man opens a bank account to save money for his future and plans to invest in the stock market to grow his wealth and achieve financial stability while also setting aside funds for emergencies and major life events such as buying a house, getting married, and starting a family.
    ''';

  const ContractAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contract Agreement'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                contractText,
                style: const TextStyle(fontSize: 16),
              ),
                  Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                     Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                                 Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                     Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    contractText,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle accept logic
              },
              child: const Text('Accept'),
            ),
          ),
        ],
      ),
    );
  }
}
