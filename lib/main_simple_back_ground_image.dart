import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

/// Flutter code sample for [CupertinoPageScaffold].
/// MyAppBackGroundTest

void main() => runApp(const MyAppBackGroundTest());

class MyAppBackGroundTest extends StatelessWidget {
  const MyAppBackGroundTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false, 
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {    
    const String appTitle = 'Segurança Social + Próxima';
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: defaultGreenButtonColor,
        middle: Text(appTitle, 
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white30)),
      ),
      child: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/BgGreenDegrade1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content Overlay
          Center(
            child: CupertinoButton(
              color: CupertinoColors.systemBlue,
              onPressed: () {
                // Your action here
              },
              child: Text(
                'Press Me',
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: CupertinoColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
