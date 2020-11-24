import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class AddProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add a Project")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("Enter project name:", style: TextStyle(fontSize: 35)),
              Container(
                width: 700.0,
                child: TextField(
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Text("Enter college name:", style: TextStyle(fontSize: 35)),
              Container(
                width: 700.0,
                child: TextField(
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Text("Enter a link for a Zoom meeting:",
                  style: TextStyle(fontSize: 35)),
              Container(
                width: 700.0,
                child: TextField(
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(
                  "Enter a project image, either a link to an image or upload a file:",
                  style: TextStyle(fontSize: 35)),
              Container(
                width: 700.0,
                child: TextField(
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RaisedButton(
                    child: Text("Browse"),
                    onPressed: () {},
                  ),
                  Padding(padding: EdgeInsets.only(left: 40)),
                  Text("No file selected")
                ]),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                            child: Text("Return to Project Management Page"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        Padding(padding: EdgeInsets.only(left: 40)),
                        RaisedButton(
                            child: Text("Submit New Project"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ])),
            ])));
  }
}
