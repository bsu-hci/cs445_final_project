import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

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
      home: HomePage(title: 'CCSC MW Conference Student Showcase'),
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
  bool evaluation = false;

  Future<void> launched;
  String launchURL =
      "https://us05web.zoom.us/j/82138715491?pwd=cDFxTjNHTHM1SjNiNTZLdGpmQ1J0UT09";

  Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      print("Could not launch URL");
    }
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
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Container(
                  alignment: Alignment.topRight,
                  child: RaisedButton(
                    child: Text("Advisor?"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdvisorPage()));
                    },
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text("Click a poster to go to that project's Zoom call.",
                  style: TextStyle(fontSize: 30)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Docker Simplifier", style: TextStyle(fontSize: 20)),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: () {
                              launchInBrowser(launchURL);
                            },
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 200, child: Text("Ball State University")),
                        RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EvaluatePage()));
                            },
                            child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 1

              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Quantum Computing", style: TextStyle(fontSize: 20)),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage2.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: () {
                              launchInBrowser(launchURL);
                            },
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 200, child: Text("University of Findlay")),
                        RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EvaluatePage()));
                            },
                            child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 2
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("New Way to Synthesize Sound",
                        style: TextStyle(fontSize: 20)),
                    Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage3.jpg'))),
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: () {
                              launchInBrowser(launchURL);
                            },
                            child: null)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(width: 200, child: Text("Knox College")),
                        RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EvaluatePage()));
                            },
                            child: Text("Evaluate"))
                      ],
                    )
                  ])), //item 3
            ]), //end of row 1

            Padding(
              padding: EdgeInsets.only(top: 40),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Nanobots: The World of Tomorrow",
                          style: TextStyle(fontSize: 20)),
                      Container(
                          width: 280,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/exampleImage4.jpg'))),
                          child: FlatButton(
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {
                                launchInBrowser(launchURL);
                              },
                              child: null)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 200,
                              child: Text("Spring Arbor University")),
                          RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EvaluatePage()));
                              },
                              child: Text("Evaluate"))
                        ],
                      )
                    ])), //item 4
                Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Virtual Reality and the Workplace",
                          style: TextStyle(fontSize: 20)),
                      Container(
                          width: 280,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/exampleImage5.jpg'))),
                          child: FlatButton(
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {
                                launchInBrowser(launchURL);
                              },
                              child: null)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 200, child: Text("Augustana College")),
                          RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EvaluatePage()));
                              },
                              child: Text("Evaluate"))
                        ],
                      )
                    ])), //item 5
                Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Online Shopping Helper",
                          style: TextStyle(fontSize: 20)),
                      Container(
                          width: 280,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/exampleImage6.jpg'))),
                          child: FlatButton(
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {
                                launchInBrowser(launchURL);
                              },
                              child: null)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 200,
                              child: Text("Northern Kentucky University")),
                          RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EvaluatePage()));
                              },
                              child: Text("Evaluate"))
                        ],
                      )
                    ])), //item 6
              ]),
            ) //end of row 2
          ],
        ),
      ),
    );
  }
}

class EvaluatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Evaluation")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("Enter a score 0-4 for the items below.",
                  style: TextStyle(fontSize: 30)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Text("Clear Goals",
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.left),
                    Text("Adequate Preparation",
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.left),
                    Text("Appropriate Methods",
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.left),
                    Text("Significant Results",
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.left),
                    Text("Effective Presentation",
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.left),
                    Text("Reflective Critique",
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.left),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 400)), //column of text
                SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: TextField(
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Flexible(
                          child: TextField(
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Flexible(
                          child: TextField(
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Flexible(
                          child: TextField(
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Flexible(
                          child: TextField(
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Flexible(
                          child: TextField(
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    )) //column of boxes
              ]), //main row with two columns

              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text("Please write any comments below:",
                    style: TextStyle(fontSize: 30)),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Flexible(
                      child: TextField(
                    maxLines: 6,
                    decoration: InputDecoration.collapsed(
                        hintText: "Enter your text here"),
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ))),
              Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                            child: Text("Return to Student Showcase"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        Padding(padding: EdgeInsets.only(left: 40)),
                        RaisedButton(
                            child: Text("Submit Evaluation"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ])),
            ])));
  }
}

class AdvisorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Advisor")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddProject()));
                },
                child: Icon(Icons.add),
              ),
              Padding(padding: EdgeInsets.only(left: 30)),
              Text("Add a Project", style: TextStyle(fontSize: 20))
            ]),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Docker Simplifier", style: TextStyle(fontSize: 20)),
                    Container(
                      width: 280,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/exampleImage.jpg'))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            onPressed: () {
                              null;
                            },
                            child: Text("Edit")),
                        Padding(padding: EdgeInsets.only(left: 130)),
                        RaisedButton(
                            onPressed: () {
                              null;
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Delete"))
                      ],
                    )
                  ])), //item 1

              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Quantum Computing", style: TextStyle(fontSize: 20)),
                    Container(
                      width: 280,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/exampleImage2.jpg'))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            onPressed: () {
                              null;
                            },
                            child: Text("Edit")),
                        Padding(padding: EdgeInsets.only(left: 130)),
                        RaisedButton(
                            onPressed: () {
                              null;
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Delete"))
                      ],
                    )
                  ])), //item 2
              Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("New Way to Synthesize Sound",
                        style: TextStyle(fontSize: 20)),
                    Container(
                      width: 280,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/exampleImage3.jpg'))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            onPressed: () {
                              null;
                            },
                            child: Text("Edit")),
                        Padding(padding: EdgeInsets.only(left: 130)),
                        RaisedButton(
                            onPressed: () {
                              null;
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Delete"))
                      ],
                    )
                  ])), //item 3
            ]), //end of row 1

            Padding(
              padding: EdgeInsets.only(top: 40),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Nanobots: The World of Tomorrow",
                          style: TextStyle(fontSize: 20)),
                      Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage4.jpg'))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                              onPressed: () {
                                null;
                              },
                              child: Text("Edit")),
                          Padding(padding: EdgeInsets.only(left: 130)),
                          RaisedButton(
                              onPressed: () {
                                null;
                              },
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Text("Delete"))
                        ],
                      )
                    ])), //item 4
                Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Virtual Reality and the Workplace",
                          style: TextStyle(fontSize: 20)),
                      Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage5.jpg'))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                              onPressed: () {
                                null;
                              },
                              child: Text("Edit")),
                          Padding(padding: EdgeInsets.only(left: 130)),
                          RaisedButton(
                              onPressed: () {
                                null;
                              },
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Text("Delete"))
                        ],
                      )
                    ])), //item 5
                Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Online Shopping Helper",
                          style: TextStyle(fontSize: 20)),
                      Container(
                        width: 280,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exampleImage6.jpg'))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                              onPressed: () {
                                null;
                              },
                              child: Text("Edit")),
                          Padding(padding: EdgeInsets.only(left: 130)),
                          RaisedButton(
                              onPressed: () {
                                null;
                              },
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Text("Delete"))
                        ],
                      )
                    ])), //item 6
              ]),
            ) //end of row 2
          ],
        ),
      ),
    );
  }
}

class AddProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add a Project")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text("Add a Project Sample Text")])));
  }
}
