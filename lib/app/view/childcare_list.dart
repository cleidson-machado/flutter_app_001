import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_routes_app.dart';

//THIS GUY IS ONLY A SIMPLE LIST PAGE

class ChildcareList extends StatelessWidget {
  const ChildcareList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 12;
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
          padding: const EdgeInsets.all(15.0),
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
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      color: Colors.white,
      child: const SizedBox(
        height: 130,
        child: Row(
          children: [
            Expanded(flex: 2, child: Icon(Icons.home_work_outlined, size: 40, color: Color.fromARGB(255, 6, 40, 166))),
            Expanded(flex: 8, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: EdgeInsets.only(top: 8.0), // Top padding
                    child: Text('Creche XPTO da Listagen', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('Freguesia: Avenida da Flores, 123-79B'), 
                  Text('Entidade: Associação de Pais do Bairro Fe...'),
                  //
                  Padding(padding: EdgeInsets.only(top: 8.0), // Top padding
                    child: Text('TIPO: CRECHE ADERENTE', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.red))
                    ),
                  Padding(padding: EdgeInsets.only(top: 3.0), // Top padding
                    child: Text('| Cap. Max: 45 | Vagas Disp.: 8 |', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 6, 40, 166))),
                    ), 
                    //
                  ],
              ))
            ],
        )
      ),
    );
  }
}