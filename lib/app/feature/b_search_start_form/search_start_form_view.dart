import 'package:flutter/material.dart';

class SearchStartFormView extends StatefulWidget {
  const SearchStartFormView({super.key});

  @override
  State<SearchStartFormView> createState() => _SearchStartFormViewState();
}

//ITENS LIST da RESPOSTA SOCIAL
final List<String> _dropDownItemsRespostaSocial = [
  'Selecione uma opção',
  'Creche',
  'Ama',
  'Asilo',
];
String _selectedTextRespostaSocial = 'Selecione uma opção';
//FIM - ITENS LIST da RESPOSTA SOCIAL

//ITENS LIST da LOCALIZAÇÃO
final List<String> _dropDownItemsLocalizacao = [
  'Selecione uma Opção',
  'Zona de Residência',
  'Local de Trabalho',
  'Outra Localização (pendente comprovativo)',
];
String _selectedTextLocalizacao = 'Selecione uma Opção';
//FIM - ITENS LIST da LOCALIZAÇÃO

//ITENS LIST da TIPO DE VAGA
final List<String> _dropDownItemsTipoDeVaga = [
  'Selecione uma Opção',
  'Ainda NÃO Anda',
  'Anda e têm idade inferior a 2 Anos',
  'Têm idade superior a 2 anos ou mais',
];
String _selectedTextTipoDeVaga  = 'Selecione uma Opção';
//FIM - ITENS LIST da LOCALIZAÇÃO

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
        body: SafeArea(
          child: Container(
            color: Colors.white, //MARCA!! ROOT Widget
            child: Column(
              children: <Widget>[
                // CABECAÇHO! #############################
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(bottom: BorderSide(color: Colors.black))),
                    child: const Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 3),
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
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: 
                            DropdownButtonFormField(
                              value: _selectedTextRespostaSocial,
                              items: _dropDownItemsRespostaSocial.map((String item)
                                {
                                  return DropdownMenuItem(
                                    value: item,
                                    child: Text(item)
                                    );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedTextRespostaSocial = value!;
                                  });
                                },
                                icon: const Icon(Icons.arrow_drop_down),
                                decoration: const InputDecoration(
                                  labelText: 'Resposta Social',
                                  border: OutlineInputBorder(),
                                ),
                              )
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
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: 
                            DropdownButtonFormField(
                              value: _selectedTextLocalizacao,
                              items: _dropDownItemsLocalizacao.map((String item)
                                {
                                  return DropdownMenuItem(
                                    value: item,
                                    child: Text(item)
                                    );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedTextLocalizacao = value!;
                                  });
                                },
                                icon: const Icon(Icons.arrow_drop_down),
                                decoration: const InputDecoration(
                                  labelText: 'Localização',
                                  border: OutlineInputBorder(),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ########################################################## ITENS A OCULTAR CASO A ZONA DE RESIDÊNCIA NÃO SEJA ESPECIFICADA

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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                          child: Text(
                            'Combo 3 - DISTRITO',
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                          child: Text(
                            'Combo 4 - CONCELHO',
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                          child: Text(
                            'Combo 5 - FREGUESIA',
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

                // ########################################################## FIM DE ITENS A OCULTAR CASO A ZONA DE RESIDÊNCIA NÃO SEJA ESPECIFICADA
          
                //############################# COMBO 6 -- PRÉ-FIM 
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                            child: 
                            DropdownButtonFormField(
                              value: _selectedTextTipoDeVaga,
                              items: _dropDownItemsTipoDeVaga.map((String item)
                                {
                                  return DropdownMenuItem(
                                    value: item,
                                    child: Text(item)
                                    );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedTextTipoDeVaga = value!;
                                  });
                                },
                                icon: const Icon(Icons.arrow_drop_down),
                                decoration: const InputDecoration(
                                  labelText: 'Tipo da Vaga',
                                  border: OutlineInputBorder(),
                                ),
                              )
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 3),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 3),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 3),
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
            ),
          ),
        ));
  }
}
