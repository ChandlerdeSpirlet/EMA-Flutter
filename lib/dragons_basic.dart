import 'main.dart';
import 'package:flutter/material.dart';
import 'webViews.dart';
import 'documents.dart';

class dragonsBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Little Dragons & Basic'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            SizedBox(height: 25.0),
            Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.grey,
              child: ElevatedButton(
                child: Text('Documents'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Documents_Basic()));
                },
              ),
            ), //Documents
            SizedBox(height: 25.0),
            Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.grey,
              child: ElevatedButton(
                child: Text('Class Signup'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                            title: "Class Signup",
                            selectedUrl:
                                "https://ema-planner.herokuapp.com/student_classes",
                          )));
                },
              ),
            ),
          ],
        ))));
  }
}
