import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'EditProject.dart';
import 'AddProject.dart';

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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditProject()));
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditProject()));
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditProject()));
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
              padding: EdgeInsets.only(top: 18),
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EditProject()));
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EditProject()));
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EditProject()));
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
            ), //end of row 2

            Padding(
                padding: EdgeInsets.only(top: 40),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RaisedButton(
                      child: Text("Logout"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ])),
          ],
        ),
      ),
    );
  }
}
