import 'main.dart';
import 'package:flutter/material.dart';
import 'webViews.dart';
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MyWebView(
                                title: "Schedule",
                                selectedUrl:
                                    "https://emafiles.herokuapp.com/store/schedule.pdf",
                              )));
                    })),
            SizedBox(height: 25.0),
            Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.grey,
                child: ElevatedButton(
                    child: Text('Calendar'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MyWebView(
                                title: "Calendar",
                                selectedUrl:
                                    "https://emafiles.herokuapp.com/store/Calendar.pdf",
                              )));
                    })),
            SizedBox(height: 25.0),
            Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.grey,
                child: ElevatedButton(
                    child: Text('ITP'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MyWebView(
                                title: "ITP",
                                selectedUrl:
                                    "https://emafiles.herokuapp.com/store/schedule.pdf",
                              )));
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
                'https://emafiles.herokuapp.com/store/ITP.pdf')));
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
