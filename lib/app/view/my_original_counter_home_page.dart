import 'package:flutter/material.dart';
import 'package:my_view_app_001/api_env/api_enviroment.dart';

//######################## THIS IS OUR MAIN PAGE... USING AS EXAMPLE THE ORIGINAL COUNTER CODE ########################

class MyOriginalCounterHomePage extends StatefulWidget {
  const MyOriginalCounterHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyOriginalCounterHomePage> createState() => _MyOriginalCounterHomePageState();
}

class _MyOriginalCounterHomePageState extends State<MyOriginalCounterHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
             Text(
              'API key: ${ApiEnviroment.apiKey} | API Url: ${ApiEnviroment.apiBaseUrl}',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}