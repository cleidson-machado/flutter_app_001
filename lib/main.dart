import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

/// Flutter code sample for [CupertinoPageScaffold].
/// MyAppLoginLegacyView

void main() => runApp(const MyAppLoginLegacyView());

class MyAppLoginLegacyView extends StatelessWidget {
  const MyAppLoginLegacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: PageScaffoldExample(),
    );
  }
}

class PageScaffoldExample extends StatefulWidget {
  const PageScaffoldExample({super.key});

  @override
  State<PageScaffoldExample> createState() => _PageScaffoldExampleState();
}

class _PageScaffoldExampleState extends State<PageScaffoldExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'ISS - Instituto da Segurança Social';
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: defaultGreenButtonColor,
        middle: Text(appTitle, 
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white70)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('You have pressed the button $_count times.'),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: CupertinoButton.filled(
                onPressed: () => setState(() => _count++),
                child: const Icon(CupertinoIcons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
