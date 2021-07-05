import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;
  final String level;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  MyWebView(
      {@required this.title, @required this.selectedUrl, @required this.level});

  _launchURL() async {
    var url = selectedUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title), actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.open_in_browser,
                color: Colors.white,
              ),
              onPressed: () {
                _launchURL();
              })
        ]),
        body: WebView(
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
  }
}
