import 'package:flutter/material.dart';

import './selection.dart';
import './mbody.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MyApp()));

class MyApp extends StatelessWidget {
  void _select(int sel,context){
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MBody(sel)),
            );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        backgroundColor: Colors.blueGrey[400],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[800],
            leading: Icon(Icons.cached),
            title: Text("Converter"),
          ),
          body: ConvertorMenu(_select,context))
    ;
  }
}

