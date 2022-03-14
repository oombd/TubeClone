

import 'package:flutter/cupertino.dart';
import 'package:tube_clone/Api.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {

    Api api = Api();
    api.pesquisar("");

    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: const Center(
        child: Text(
          "Início",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
