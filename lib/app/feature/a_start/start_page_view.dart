import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_routes_app.dart';

//THIS GUY IS ONLY A SIMPLE LIST PAGE
//LIST OF MATERIAL ICON LIBRARY ###########################
//https://api.flutter.dev/flutter/material/Icons-class.html

class StartPageView extends StatelessWidget {
  const StartPageView({super.key});

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
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                //######### CARD 1 ##########
                GestureDetector(
                    onTap: () {Navigator.of(context).pushNamed(RoutesLib.SEARCH_COMBOS_VIEW_FORM);
                    },
                    child: Card(
                        elevation: 0.5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: const BorderSide(
                                color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                       padding: EdgeInsets.only(
                                          left: 18,
                                          top: 18,
                                          bottom: 5,
                                          right: 2),
                                      child: Text(
                                        'Pesquisa de vagas',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 18,
                                          top: 0,
                                          bottom: 18,
                                          right: 2),
                                      child: Text(
                                        'Pesquise e vizualize as vagas disponíveis'
                                        '\n'
                                        'na localização que melhor lhe convier.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 0.0, top: 0.0),
                                      child: Icon(
                                          size: 22,
                                          Icons.arrow_forward_ios_outlined),
                                    ),
                                  ],
                                )),
                          ],
                        ))),
                //----------------------------- SPACE
                const SizedBox(height: 10.0),
                //----------------------------- SPACE

                //######### CARD 2 ##########
                GestureDetector(
                    onTap: () {},
                    child: Card(
                        elevation: 0.5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: const BorderSide(
                                color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 18,
                                          top: 18,
                                          bottom: 5,
                                          right: 2),
                                      child: Text(
                                        'Consulta de vagas',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 18,
                                          top: 0,
                                          bottom: 18,
                                          right: 2),
                                      child: Text(
                                        'Consulte os pedidos de vaga, as vagas ocupadas e o histórico de vagas.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 0.0, top: 0.0),
                                      child: Icon(
                                          size: 22,
                                          Icons.arrow_forward_ios_outlined),
                                    ),
                                  ],
                                )),
                          ],
                        ))),
                //----------------------------- SPACE
                const SizedBox(height: 10.0),
                //----------------------------- SPACE

                //######### CARD 3 ##########
                GestureDetector(
                    onTap: () {},
                    child: Card(
                        elevation: 0.5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: const BorderSide(
                                color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 18,
                                          top: 18,
                                          bottom: 5,
                                          right: 2),
                                      child: Text(
                                        'Devoluções',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 18,
                                          top: 0,
                                          bottom: 18,
                                          right: 2),
                                      child: Text(
                                        'Consulte os seus valores a devolver.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 0.0, top: 0.0),
                                      child: Icon(
                                          size: 22,
                                          Icons.arrow_forward_ios_outlined),
                                    ),
                                  ],
                                )),
                          ],
                        ))),
                //----------------------------- SPACE
                const SizedBox(height: 10.0),
                //----------------------------- SPACE

                //######### CARD 4 ##########
                GestureDetector(
                    onTap: () {},
                    child: Card(
                        elevation: 0.5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: const BorderSide(
                                color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 18,
                                          top: 18,
                                          bottom: 5,
                                          right: 2),
                                      child: Text(
                                        'Acordos e planos prestacionais',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 18,
                                          top: 0,
                                          bottom: 18,
                                          right: 2),
                                      child: Text(
                                        'Consulte os valores em acordo ou plano.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 0.0, top: 0.0),
                                      child: Icon(
                                          size: 22,
                                          Icons.arrow_forward_ios_outlined),
                                    ),
                                  ],
                                )),
                          ],
                        ))),
              ],
            )));
  }
}
