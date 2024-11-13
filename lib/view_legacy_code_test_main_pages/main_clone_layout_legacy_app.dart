import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/button_container_auth_gov_pt.dart';
import 'package:my_view_app_001/Components/button_container_enable.dart';
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
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: defaultGreenButtonColor,
        middle: Text(appTitle, 
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white30)),
      ),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //## MASTER ALIGNMENT..
          children: <Widget>[
            const SizedBox(height: 95),
            Align(alignment: Alignment.topCenter,
            child: Image.asset("assets/images/LogoSegSocialReb.png", fit: BoxFit.contain, width:  175),
            ),
            const SizedBox(height: 100),
            ///CONTAINERS START ############
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width *.8,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: CupertinoTextFormFieldRow(
                prefix: const Text(''),
                placeholder: 'NISS',
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite um Número Valido de NIF';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width *.8,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: CupertinoTextFormFieldRow(
                prefix: const Text(''),
                placeholder: 'Palavra-Chave',
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite um Número Valido de NIF';
                  }
                  return null;
                },
              ),
            ),
            ///CONTAINERS END ############
            ButtonContainerEnable(label: 'ENTRAR', press: () { },),
            const Center(
              child: Text('Para aceder, utilize dados de acesso via'),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text('SITE da Segurança Social Direta', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 25),
            const Center(
              child: Text('Ou', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
            ),
            const SizedBox(height:5),
            ButtonContainerAuthGovPt(press: () { },),
            const SizedBox(height:5),
            const Center(
              child: Text('\u00A9 2025 - Instituto de Informatica', style: TextStyle(fontSize: 14, color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
