import 'package:flutter/material.dart';

class SearchStartFormView extends StatefulWidget {
  const SearchStartFormView({super.key});

  @override
  State<SearchStartFormView> createState() => _SearchStartFormViewState();
}

class _SearchStartFormViewState extends State<SearchStartFormView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Cooperação',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Container(
          color: Colors.lightBlue[100], //MARCA!! ROOT Widget
          child: Column(
            children: [
              // CABECAÇHO! #############################
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'Pesquisa de vagas',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# COMBO 1
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'Combo 1 - Resposta Social',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# COMBO 2
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'Combo 2 - Zona de Residência',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# COMBO 3
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'Combo 3 - Distrito',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# COMBO 4
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'Combo 4 - Conselho',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# COMBO 5
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'Combo 5 - Freguesia',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# TXT de Observação
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'TXT de Observação',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# Radio BTN
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'radio BTN',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //############################# BTN de Pesquisar
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                              border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Row(
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      child: Text(
                        'SPACE BTN DE Pesquisar',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                  ),
                ),
              ),

            ],
          ) ,
        )
        );
  }
}
