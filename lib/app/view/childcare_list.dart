import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_routes_app.dart';

//THIS GUY IS ONLY A SIMPLE LIST PAGE

class ChildcareList extends StatelessWidget {
  const ChildcareList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 15;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Lista de Creches', style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).pushNamed(RoutesLib.ORDER_VACANCY_FORM);
        }, 
        icon: const Icon(Icons.add))],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                      items, (index) => ItemWidget(text: 'Item $index xxx')),
                ),
              ),
            );
          }),
        ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      color: Colors.grey[100],
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }
}