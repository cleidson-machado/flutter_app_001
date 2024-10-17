import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/button_container_enable.dart';
import 'package:my_view_app_001/views/daycare_agreement_user.dart';

class DaycareIndexView extends StatelessWidget {
  const DaycareIndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Text("Home", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Image.asset("assets/images/LogoSegSocialReb.png", fit: BoxFit.contain, width:  115),
                  const SizedBox(height: 70),
                  // const Text("Creche Feliz", style: TextStyle(fontSize: 35, color: Colors.grey, fontWeight: FontWeight.bold),),
                  Image.asset("assets/images/LogoLegacyRebuildLetters.png", fit: BoxFit.contain, width:  175),
                  // const SizedBox(height: 15),
                  Image.asset("assets/images/LogoLegacyRebuild.png", fit: BoxFit.contain, width:  300),
                  const Text("sistema para busca de vagas", style: TextStyle( fontSize: 15, color: Colors.blueGrey),),
                  // const SizedBox(height: 60),
                  ButtonContainerDisable(
                    label: 'ENTRAR',
                    press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const DaycareAgreement()));
                    },
                  ),
                  const SizedBox(height: 45),
                  Image.asset("assets/images/LogoGovernoPTDefault.png", fit: BoxFit.contain, width:  270),
                ],
                    ),
            )
        ),
    );
  }
}