import 'package:flutter/cupertino.dart';

class Inscricao extends StatefulWidget {
  const Inscricao({Key? key}) : super(key: key);

  @override
  State<Inscricao> createState() => _InscricaoState();
}

class _InscricaoState extends State<Inscricao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: const Center(
        child: Text(
          "Inscrições",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
