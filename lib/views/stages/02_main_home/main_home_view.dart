import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/app_shared_text_rotules.dart';
import 'package:my_view_app_001/Components/colours_library.dart';
import 'package:my_view_app_001/Components/nav_bars/nav_bar_index.dart';

void main() {
  runApp(const MainAppPage());
}

class MainAppPage extends StatelessWidget {
  const MainAppPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainHomePage(title: appTitle),
    );
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key, required this.title});
  final String title;

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: defaultGreenButtonColor,
        title: Text(widget.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: const Center(), //#### Todo

    );
  }
}
