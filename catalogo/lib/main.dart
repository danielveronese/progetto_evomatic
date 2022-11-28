import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const Catalogo());
}

String buttonname = 'click';
int currentIndex = 0;

class Catalogo extends StatefulWidget {
  const Catalogo({Key? key}) : super(key: key);

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
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
          backgroundColor: const Color.fromARGB(255, 247, 128, 0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
          elevation: 0,
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromRGBO(0, 48, 73, 1),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
              color: const Color.fromRGBO(0, 48, 73, 1),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Catalogo',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 48, 73, 1),
                      fontFamily: 'Poppins',
                      fontSize: 35.0,
                      height: 2.5,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Scegli il prodotto da acquistare ',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 48, 73, 1),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    )),
              ],
            ),
            Row(
              children: [],
            ),
          ],
        ));
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
