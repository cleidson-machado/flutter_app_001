import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';
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
                  Image.asset("assets/images/LogoSegSocialReb.png", fit: BoxFit.contain, width:  115),
                  const SizedBox(height: 70),
                  Image.asset("assets/images/LogoLegacyRebuildLetters.png", fit: BoxFit.contain, width:  175),
                  Image.asset("assets/images/LogoLegacyRebuild.png", fit: BoxFit.contain, width:  300),
                  const Text("sistema de candidatura e busca de vagas", style: TextStyle( fontSize: 15, color: Colors.blueGrey),),
                  const SizedBox(height: 100),
                    SizedBox(
                        width: 355,
                        height: 50, 
                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: defaultGreenButtonColor,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set the corner radius
                        ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const DaycareAgreement()));
                          },
                        child: const Text('INICIAR CANDIDATURA', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),

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