import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/app_shared_text_rotules.dart';
import 'package:my_view_app_001/Components/button_container_auth_gov_pt.dart';
import 'package:my_view_app_001/Components/button_container_enable.dart';
import 'package:my_view_app_001/Components/colours_library.dart';
import 'package:my_view_app_001/views/stages/02_main_home/main_home_view.dart';

/// Flutter code sample for [CupertinoPageScaffold].
/// ## FLOW SIMULATIONS - LoginPage ##

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false, 
      home: LoginHomePage(),
    );
  }
}

class LoginHomePage extends StatefulWidget {
  const LoginHomePage({super.key});

  @override
  State<LoginHomePage> createState() => _LoginHomePageState();
}

class _LoginHomePageState extends State<LoginHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                image: AssetImage('assets/images/BgGreenDegrade2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(child: Column(
              children: <Widget>[
            const SizedBox(height: 62),
            Align(alignment: Alignment.topCenter,
            child: Image.asset("assets/images/LogoSegSocialReb.png", fit: BoxFit.contain, width:  195),
            ),
            const SizedBox(height: 45),
            ///CONTAINERS START ############
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              alignment: Alignment.centerLeft,
              child: const Text('login', style: TextStyle(fontSize: 36, color: Colors.grey)),),
            const SizedBox(height: 15),
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
                    return 'Digite um Número Valido de NIF!';
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
                    return 'Senha ou NIF estão errados!';
                  }
                  return null;
                },
              ),
            ),
            ///CONTAINERS END ############
            ///########### CHANGE THIS ONE FOR A REAL BUTTON AFTER TESTING EVERYTHING #############
            ButtonContainerEnable(label: 'ACEDER', press: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainAppPage()));},),
            ///########### CHANGE THIS ONE FOR A REAL BUTTON AFTER TESTING EVERYTHING #############
            const Center(
              child: Text('Utilize, acima, o mesmo acesso utilizado no site da:', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black)),
            ),
            const SizedBox(height: 4),
            const Center(
              child: Text('Segurança Social Direta', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: defaultGreenButtonColor, decoration: TextDecoration.underline,)),
            ),
            const SizedBox(height: 22),
            const Center(
              child: Text('Ou', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
            ),
            const SizedBox(height:5),
            ButtonContainerAuthGovPt(press: () { },),
            const SizedBox(height:8),
            const Center(
              child: Text('\u00A9 2025 - Instituto de Informatica', style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
            ),),
          ),
          // Content Overlay
        ],
      ),
    );
  }
}
