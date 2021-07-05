import 'main.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Documents_Basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Documents')),
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
                    })),
            SizedBox(height: 25.0),
            Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.grey,
                child: ElevatedButton(
                    child: Text('ITP'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ITP()));
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

class ITP extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Schedule'),
        ),
        body: Center(
            child: SfPdfViewer.network(
                'https://emafiles.herokuapp.com/store/ITP.pdf')));
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
