import 'package:flutter/material.dart';
import 'package:my_view_app_001/Components/colours_library.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  //  TRY Test: Flutter Internationalization and Localization Tutorial | Create Multi Language Flutter Applicatio
  // https://youtu.be/ltOGmtSuN6w

  @override
  Widget build(BuildContext context) {
    /// START LOCAL GLOBAL TEXT STYLE ################################################
    TextStyle globalTextStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black);

    /// END LOCAL GLOBAL TEXT STYLE ##################################################
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('CLEIDSON PEREIRA MACHADO',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: defaultGreenButtonColor)),
            accountEmail: Text('NISS: 1227.6956.698',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54)),
            decoration: BoxDecoration(
                color: defaultGreenButtonColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/MenuAppPhotoFnd.png'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.person_search_rounded),
            title: Text("Posição Atual", style: globalTextStyle),
            onTap: () => {null},
          ),
          ListTile(
            leading: const Icon(Icons.wallet_rounded),
            title: Text("Documentos de Pagamento", style: globalTextStyle),
            onTap: () => {null},
          ),
          ListTile(
            leading: const Icon(Icons.card_membership_rounded),
            title: Text("Cartão Europeu de Seguro", style: globalTextStyle),
            onTap: () => {null},
          ),
          ListTile(
            leading: const Icon(Icons.inbox_rounded),
            title: Text("Menssagens", style: globalTextStyle),
            onTap: () => {null},
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month_rounded),
            title: Text("Agenda", style: globalTextStyle),
            onTap: () => {null},
          ),
          ListTile(
            leading: const Icon(Icons.settings_rounded),
            title: Text("Definições", style: globalTextStyle),
            onTap: () => {null},
          ),
          ListTile(
            leading: const Icon(Icons.perm_phone_msg_rounded),
            title: Text("Contactos", style: globalTextStyle),
            onTap: () => {null},
          ),
          ListTile(
            leading: const Icon(Icons.live_help_rounded),
            title: Text("Informações", style: globalTextStyle),
            onTap: () => {null},
          ),
          const SizedBox(height: 66),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: Text("SAIR", style: globalTextStyle),
            onTap: () => {null},
          ),
        ],
      ),
    );
  }
}
