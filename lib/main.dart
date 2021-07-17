import 'package:ema_beta/dragons_basic.dart';
import 'package:flutter/material.dart';
import 'webViews.dart';
import 'documents.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: "assets/.env");
  runApp(MaterialApp(
    title: 'EMA Home',
    theme: ThemeData(fontFamily: 'SF Fonts'),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text('Exclusive Martial Arts'),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Container(
                    height: 100.0,
                    width: double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(
                      child: Text('Little Dragons & Basics'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dragonsBasic()));
                      },
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                    height: 100.0,
                    width: double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(
                      child: Text('Level 1'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dragonsBasic()));
                      },
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                    height: 100.0,
                    width: double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(
                      child: Text('Level 2'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dragonsBasic()));
                      },
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                    height: 100.0,
                    width: double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(
                      child: Text('Level 3'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dragonsBasic()));
                      },
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                    height: 100.0,
                    width: double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(
                      child: Text('Black Belt'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dragonsBasic()));
                      },
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                    height: 100.0,
                    width: double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(
                      child: Text('Weapons'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dragonsBasic()));
                      },
                    )),
                SizedBox(
                  height: 25.0,
                ),
              ])),
            )));
  }
}
