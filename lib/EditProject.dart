import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'AdvisorPage.dart';
import 'AddProject.dart';
import 'EvaluatePage.dart';

class EditProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Edit Project")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
          Text("Edit project name:", style: TextStyle(fontSize: 35)),
          Container(
            width: 700.0,
            child: TextField(
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(hintText: "Sample Name"),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
          Text("Edit college name:", style: TextStyle(fontSize: 35)),
          Container(
            width: 700.0,
            child: TextField(
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(hintText: "College University"),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
          Text("Edit link for a Zoom meeting:", style: TextStyle(fontSize: 35)),
          Container(
            width: 700.0,
            child: TextField(
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                  hintText: "https://zoom.meeting/a9302jfjer03u0"),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
          Text(
              "Edit project image, either a link to an image or upload a file:",
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
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RaisedButton(
                child: Text("Browse"),
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.only(left: 40)),
              Text("finalProjectPoster.jpg")
            ]),
          ),
          Padding(
              padding: EdgeInsets.only(top: 40),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                RaisedButton(
                    child: Text("Return to Project Management Page"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                Padding(padding: EdgeInsets.only(left: 40)),
                RaisedButton(
                    child: Text("Save Project Changes"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ])),
        ])));
  }
}
