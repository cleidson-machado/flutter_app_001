import 'package:flutter/material.dart';
import 'package:my_view_app_001/app/childcare_vacancy_finder_routes_app.dart';

//THIS GUY IS ONLY A SIMPLE LIST PAGE

class ChildcareRootPage extends StatelessWidget {
  const ChildcareRootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Iss App',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesLib.ORDER_VACANCY_FORM);
                },
                icon: const Icon(Icons.arrow_circle_right_sharp))
          ],
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Container(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                GestureDetector(
                  onTap: () {Navigator.of(context).pushNamed(RoutesLib.CARDS_LIST_VIEW_START);
                  },
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '-- App Root START - Originnal Stuff --',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            )));
  }
}
