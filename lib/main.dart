import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(CCSCMWConference());
}

class CCSCMWConference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCSC MW Conference',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'CCSC MW Conference Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Click a poster to join the presentation for that project."),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Container(
                        width: 100,
                        height: 75,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: null,
                            child: null))
                  ])), //item 1

              Flexible(
                child: Text("sample text"),
              ), //item 2
              Flexible(child: Text("sample text")) //item 3
            ]), //end of row 1

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                child: Text("Item 4"),
              ), //item 4
              Flexible(child: Text("Item 5")), //item 5
              Flexible(
                child: Text("Item 6"),
              ), //item 6
            ]), //end of row 2
          ],
        ),
      ),
    );
  }
}
