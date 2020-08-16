import 'package:flutter/material.dart';
import 'package:flutter_json_api/local_json.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Json Ve Api"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: RaisedButton(
                child: Text("Local Api"),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocalJson()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
