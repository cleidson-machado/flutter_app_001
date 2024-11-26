import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_routes_app.dart';

//THIS GUY IS ONLY A SIMPLE LIST PAGE

class ChildcareList extends StatelessWidget {
  const ChildcareList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 20;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Lista de Creches',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesLib.ORDER_VACANCY_FORM);
              },
              icon: const Icon(Icons.add))
        ],
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
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      child: SizedBox(
          height: 115,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                        child: IconButton(
                          icon: const Badge(
                            label: Text('8'),
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.face_rounded,
                                size: 35,
                                color: Color.fromARGB(255, 6, 40, 166)),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: IconButton(
                          icon: const Badge(
                            label: Text('32'),
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.move_to_inbox_rounded,
                                size: 35,
                                color: Color.fromARGB(255, 6, 40, 166)),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )),
              const Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.0), // Top padding
                        child: Text(
                          'Creche XPTO da Listagen Names...',
                          style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text('Freguesia: Avenida da Flores, 123-79B'),
                      ),
                      Text('Entidade: Associação de Pais do Bairro Fe...'),
                      //
                      Padding(
                          padding: EdgeInsets.only(top: 7.0), // Top padding
                          child: Text('Resp. Social: CRECHE ADERENTE',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey))),
                      //
                    ],
                  ))
            ],
          )),
    );
  }
}
