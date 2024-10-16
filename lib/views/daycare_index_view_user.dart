import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

class DaycareIndexViewUser extends StatelessWidget {
  const DaycareIndexViewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/LogoSegSocialReb.png", fit: BoxFit.contain, width:  115),
              const SizedBox(height: 20),
              const Text(
                "TERMOS E CONDIÇÕES DO SERVIÇO",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primaryColor),
              ),
              const SizedBox(height: 2),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 450.0, // Fixed height for the scrollable area
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
              const SizedBox(height: 150),
              Image.asset(
                "assets/images/LogoGovernoPTDefault.png",
                fit: BoxFit.contain,
                width: 270,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
