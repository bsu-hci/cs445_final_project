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
  int counter = 0;

  void counterIncrease() {
    setState(() {
      counter++;
    });
  }

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
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Docker Simplifier"),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: counterIncrease,
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 200, child: Text("Ball State University")),
                        RaisedButton(
                            onPressed: counterIncrease, child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 1

              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Quantum Computing"),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage2.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: counterIncrease,
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 200, child: Text("University of Findlay")),
                        RaisedButton(
                            onPressed: counterIncrease, child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 2
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("New Way to Synthesize Sound"),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage3.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: counterIncrease,
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(width: 200, child: Text("Knox College")),
                        RaisedButton(
                            onPressed: counterIncrease, child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 3
            ]), //end of row 1

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Nanobots: The World of Tomorrow"),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage4.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: counterIncrease,
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 200, child: Text("Spring Arbor University")),
                        RaisedButton(
                            onPressed: counterIncrease, child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 4
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Virtual Reality and the Workplace"),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage5.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: counterIncrease,
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(width: 200, child: Text("Augustana College")),
                        RaisedButton(
                            onPressed: counterIncrease, child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 5
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Online Shopping Helper"),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage6.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: counterIncrease,
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 200,
                            child: Text("Northern Kentucky University")),
                        RaisedButton(
                            onPressed: counterIncrease, child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 6
            ]), //end of row 2
          ],
        ),
      ),
    );
  }
}
