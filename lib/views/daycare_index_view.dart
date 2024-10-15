import 'package:flutter/material.dart';

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
                  const Text("Daycare", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  const Text("Creche Feliz", style: TextStyle(fontSize: 35, color: Colors.grey, fontWeight: FontWeight.bold),),
                  const Text("busca de vagas para creches publicas e privadas", style: TextStyle( fontSize: 15, color: Colors.red),),
                  Image.asset("assets/images/LogoLegacyRebuild.png"),
                ],
                    ),
            )
        ),
    );
  }
}