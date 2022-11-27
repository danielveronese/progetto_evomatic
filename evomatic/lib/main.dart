import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Carrello());
}

String buttonname = 'click';
int currentIndex = 0;

class Carrello extends StatefulWidget {
  Carrello({Key? key}) : super(key: key);

  @override
  State<Carrello> createState() => _CarrelloState();
}

class _CarrelloState extends State<Carrello> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Pageex(),
    );
  }
}

class Pageex extends StatefulWidget {
  const Pageex({Key? key}) : super(key: key);

  @override
  _Pageexstate createState() => _Pageexstate();
}

class _Pageexstate extends State<Pageex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        actions: <Widget>[
          FloatingActionButton(
            onPressed: (() {}),
            backgroundColor: const Color.fromRGBO(247, 127, 0, 100),
            foregroundColor: const Color.fromRGBO(0, 48, 73, 100),
            child: const Icon(Icons.person),
            elevation: 0,
          ),
        ],
      ),
      body: Center(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Catalogo',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 35.0)),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(
                Icons.settings,
              ))
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

class Nextpage extends StatelessWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
