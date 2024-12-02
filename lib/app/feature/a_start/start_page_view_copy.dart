import 'package:flutter/material.dart';

//THIS GUY IS ONLY A SIMPLE LIST PAGE

class StartPageViewCopy extends StatelessWidget {
  const StartPageViewCopy({super.key});

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
              children: <Widget> [

                //######### CARD 1 ##########
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 0.5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: const BorderSide(color: Colors.grey, width: 0.5)),
                    color: Colors.white,
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8, top: 8, bottom: 0, right: 10),
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
                                  left: 8, top: 0, bottom: 8, right: 2),
                              child: Text(
                                  'Pesquise e vizualize vagas disponíveis por localização.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                                    ),
                            )
                          ],
                        )),
                  ),
                ),

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
                        side: const BorderSide(color: Colors.grey, width: 0.5)),
                    color: Colors.white,
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8, top: 8, bottom: 0, right: 10),
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
                                  left: 8, top: 0, bottom: 8, right: 2),
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
                  ),
                ),

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
                        side: const BorderSide(color: Colors.grey, width: 0.5)),
                    color: Colors.white,
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8, top: 8, bottom: 0, right: 10),
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
                                  left: 8, top: 0, bottom: 8, right: 2),
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
                  ),
                ),

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
                        side: const BorderSide(color: Colors.grey, width: 0.5)),
                    color: Colors.white,
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8, top: 8, bottom: 0, right: 10),
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
                                  left: 8, top: 0, bottom: 8, right: 2),
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
                  ),
                ),

              ],
            )));
  }
}
