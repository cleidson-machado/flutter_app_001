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
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '-- Search Form --',
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
            ))
    );
  }
}