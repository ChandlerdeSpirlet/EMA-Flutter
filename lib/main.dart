import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
//import 'package:flutter_demos/models/videos_list.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
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
                                builder: (context) => Documents()));
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
                                builder: (context) => FirstRoute()));
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
                                builder: (context) => FirstRoute()));
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
                                builder: (context) => FirstRoute()));
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
                                builder: (context) => FirstRoute()));
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
                                builder: (context) => FirstRoute()));
                      },
                    )),
                SizedBox(
                  height: 25.0,
                ),
              ])),
            )));
  }
}

class Documents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Documents')),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage("images/dragons.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 25.0),
            Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.grey,
                child: ElevatedButton(
                    child: Text('Schedule'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sched()));
                    })),
            SizedBox(height: 25.0),
            Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.grey,
                child: ElevatedButton(
                    child: Text('Calendar'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cal()));
                    }))
          ],
        ))));
  }
}

class Sched extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Schedule'),
        ),
        body: Center(
            child: SfPdfViewer.network(
                'https://emafiles.herokuapp.com/store/schedule.pdf')));
  }
}

class Cal extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calendar'),
        ),
        body: Center(
            child: SfPdfViewer.network(
                'https://emafiles.herokuapp.com/store/Calendar.pdf')));
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
