import 'package:flutter/cupertino.dart';

class EmAlta extends StatefulWidget {
  const EmAlta({Key? key}) : super(key: key);

  @override
  State<EmAlta> createState() => _EmAltaState();
}

class _EmAltaState extends State<EmAlta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: const Center(
        child: Text(
          "Em alta",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
