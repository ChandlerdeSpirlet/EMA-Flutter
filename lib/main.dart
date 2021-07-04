import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'EMA Home',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Exclusive Martial Arts'),
      ),
      body: SafeArea(
          child: Column(children: <Widget>[
        SizedBox(
          height: 25.0,
        ),
        Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.white,
            child: ElevatedButton(
              child: Text('Little Dragons & Basics'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstRoute()));
              },
            )),
        SizedBox(
          height: 25.0,
        ),
      ])),
    ));
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Route One'),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()));
          },
        )));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Two'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
