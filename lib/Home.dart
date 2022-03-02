import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Tubeclone",
          style: TextStyle(
            color: Colors.red
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.video_call_rounded),
            //color: Colors.black54,
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
            //color: Colors.black54,
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.account_circle_outlined),
            //color: Colors.black54,
          ),
        ],
      ),
      body: Container(
        color: Colors.white38,
      ),
    );
  }
}