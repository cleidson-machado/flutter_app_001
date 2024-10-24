import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/button_container_auth_gov_pt.dart';
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
      debugShowCheckedModeBanner: false, 
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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //## MASTER ALIGNMENT..
          children: <Widget>[
            const SizedBox(height: 15),
            Align(alignment: Alignment.topCenter,
            child: Image.asset("assets/images/LogoSegSocialReb.png", fit: BoxFit.contain, width:  175),
            ),
            const SizedBox(height: 100),
            const Center(
              child: Text('Para aceder, utilize dados de acesso via'),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text('Segurança Social Direta', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 35),
            const Center(
              child: Text('Ou', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
            ),
            ButtonContainerAuthGovPt(press: () { },)
          ],
        ),
      ),
    );
  }
}
