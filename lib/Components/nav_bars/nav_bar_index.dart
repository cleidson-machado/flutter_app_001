import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('CLEIDSON PEREIRA MACHADO', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
            accountEmail: Text('N° Segurança Social: 1227.6956.698'),
            decoration: BoxDecoration(
              color: defaultGreenButtonColor,
            ),
            )
        ],
      ),
    );
  }
}