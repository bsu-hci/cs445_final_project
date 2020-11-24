import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'AdvisorPage.dart';
import 'AddProject.dart';

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
                        style: TextStyle(fontSize: 45),
                        textAlign: TextAlign.left),
                    Text("Adequate Preparation",
                        style: TextStyle(fontSize: 45),
                        textAlign: TextAlign.left),
                    Text("Appropriate Methods",
                        style: TextStyle(fontSize: 45),
                        textAlign: TextAlign.left),
                    Text("Significant Results",
                        style: TextStyle(fontSize: 45),
                        textAlign: TextAlign.left),
                    Text("Effective Presentation",
                        style: TextStyle(fontSize: 45),
                        textAlign: TextAlign.left),
                    Text("Reflective Critique",
                        style: TextStyle(fontSize: 45),
                        textAlign: TextAlign.left),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 400)), //column of text
                Container(
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
              Container(
                width: 700.0,
                child: TextField(
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(hintText: "Comments..."),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
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
