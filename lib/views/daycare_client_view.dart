import 'package:flutter/material.dart';
import 'package:my_view_app_001/views_model/daycare_client_view_model.dart';

void main() {
  runApp(const DayCareClientView());
}

class DayCareClientView extends StatelessWidget {
  const DayCareClientView({super.key});

  //Here I Use a Default Layout For This View
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyClientList(),
    );
  }
}

class MyClientList extends StatefulWidget {
  const MyClientList({super.key});

  @override
  State<MyClientList> createState() => _MyClientListState();
}

class _MyClientListState extends State<MyClientList> {

  final DaycareClientViewModel itemDaycareViewModel = DaycareClientViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVVM Ecample View'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < itemDaycareViewModel.items.length; i++)
            ListTile(
              title: Text(itemDaycareViewModel.items.elementAt(i).name),
            ),
              ElevatedButton(onPressed: () {
                setState(() {
                  itemDaycareViewModel.addClient('Fulana', 12345678, DateTime.now(), false);
                });
              }, child: const Text('Add New One')),

              ElevatedButton(onPressed: () {
                setState(() {
                  itemDaycareViewModel.removeClient();
                });
              }, child: const Text('Remove One'))
        ],
      ),
    );
  }
}