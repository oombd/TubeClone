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
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        backgroundColor: Colors.white,
        title: Text(
          "TubeClone",
          style: TextStyle(
            color: Colors.black54
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.video_call_rounded),
            //color: Colors.black54,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
            //color: Colors.black54,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.account_circle_outlined),
            //color: Colors.black54,
          ),
        ],
      ),
      body: Container(),
    );
  }
}
