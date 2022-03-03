import 'package:flutter/material.dart';
import 'package:tube_clone/telas/Biblioteca.dart';
import 'package:tube_clone/telas/EmAlta.dart';
import 'package:tube_clone/telas/Inicio.dart';
import 'package:tube_clone/telas/Inscricao.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indice = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "CLONETUBE",
          style: TextStyle(
            color: Colors.red
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.video_call_rounded),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
          onTap: (indice) {
            setState(() {
              _indice = indice;
            });
          },
          fixedColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
                //color: Colors.grey,
              ),
              label: "Início",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.whatshot,
                //color: Colors.grey,
              ),
              label: "Em alta",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions,
                //color: Colors.grey,
              ),
              label: "Inscrições",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_rounded,
                //color: Colors.grey,
              ),
              label: "Biblioteca",
            ),
          ]
      ),
    );
  }
}