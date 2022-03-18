import 'package:flutter/material.dart';
import 'package:tube_clone/CustomSearchDelegate.dart';
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
  String? _resultado = "";

  @override
  Widget build(BuildContext context) {



    List<Widget> telas = [
      EmAlta(),
      Inicio(_resultado!),
      Inscricao(),
      Biblioteca(),
    ];
    
    return Scaffold(
      /*appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "VINICCIOS13",
          style: TextStyle(
            color: Colors.red
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () async {
              String? res = await showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
              );
              setState(() {
                _resultado = res;
              });
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),*/
      body: Container(
        padding: EdgeInsets.only(left: 17, right: 17, top: 17),
        child: telas[_indice],
        color: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
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
          items: [
            const BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_rounded,
              //color: Colors.grey,
            ),
            label: "Biblioteca",
          ),
            const BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon:  Text(
                "VINICCIOS13",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15
                ),
              ),
              label: "Início",
            ),
            BottomNavigationBarItem(

              backgroundColor: Colors.white,
              icon: IconButton(
                onPressed: () async {
                  String? res = await showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                  setState(() {
                    _resultado = res;
                  });
                },
                icon: const Icon(Icons.search),
              ),
              label: "Vídeos",
            ),


          ]
      ),
    );
  }
}