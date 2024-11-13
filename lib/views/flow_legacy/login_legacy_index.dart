import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

void main() {
  runApp(const MyAppLoginLegacyView());
}

// Fist Step Creating the Context! What this one exactly due here!
class MyAppLoginLegacyView extends StatelessWidget {
  const MyAppLoginLegacyView({super.key});

// Seccond Step ##################################################
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: defaultGreenButtonColor),
        useMaterial3: true,
      ),
      home: const MyIndexHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Third Step... Simple In Side Page ############################
class MyIndexHomePage extends StatefulWidget {
  const MyIndexHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyIndexHomePage> createState() => _MyIndexHomePageState();
}

class _MyIndexHomePageState extends State<MyIndexHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Tests',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  
}