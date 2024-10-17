import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/button_container_disable.dart';
import 'package:my_view_app_001/Components/colours_library.dart';
import 'package:my_view_app_001/views/daycare_index.dart';

class DaycareAgreement extends StatefulWidget {
  const DaycareAgreement({super.key});

  @override
  State<DaycareAgreement> createState() => _DaycareAgreementState();
}

class _DaycareAgreementState extends State<DaycareAgreement> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const DaycareIndexView()));
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/LogoSegSocialReb.png", fit: BoxFit.contain, width:  115),
              const SizedBox(height: 20),
              const Text(
                "TERMOS E CONDIÇÕES DO SERVIÇO",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: buttonEnableColor),
              ),
              const SizedBox(height: 2),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 360.0, // Fixed height for the scrollable area
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        'The Company reserves the right to modify this Agreement at any time, with changes taking effect upon' 
                        'posting to the Companys website. Your continued use of the Services after any changes constitutes' 
                        'acceptance of the revised Agreement.'
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                        'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                        'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                        'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla '
                        'pariatur. Excepteur sint occaecat cupidatat non proident, sunt in '
                        'culpa qui officia deserunt mollit anim id est laborum.' * 5, // Repeating for illustration
                        style: const TextStyle(fontSize: 16.0, color: Colors.black87),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: const Text('Aceito TODOS os Termos e Condições!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    value: _isChecked, 
                    onChanged: (bool? newValue){
                    setState(() {
                      _isChecked = newValue;
                    });
                  },
                  subtitle: const Text('Lembre-se a sua aceitação é irrevogável'),
                  controlAffinity: ListTileControlAffinity.leading,
                  ),
                  ButtonContainerDisable(
                    label: 'CONFIRMAR O CADASTRO',
                    press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const DaycareAgreement()));
                    },
                  ),
              const SizedBox(height: 5),
              Image.asset(
                "assets/images/LogoGovernoPTDefault.png",
                fit: BoxFit.contain,
                width: 270,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
