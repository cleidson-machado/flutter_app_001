import 'package:flutter/material.dart';

void main() {
  runApp(const DayCareClientView());
}

class DayCareClientView extends StatelessWidget {
  const DayCareClientView({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyClientList(),
    );
  }
}

class MyClientList extends StatefulWidget {
  const MyClientList({super.key});

  @override
  State<MyClientList> createState() => _MyClientListState();
}

class _MyClientListState extends State<MyClientList> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}