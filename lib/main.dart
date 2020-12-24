import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News Web View",
      home: WebViewMain()
    );
  }
}

class WebViewMain extends StatefulWidget {
  @override
  _WebViewMainState createState() => _WebViewMainState();
}

class _WebViewMainState extends State<WebViewMain> {
  @override
  void initState(){
    super.initState();
    if(Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context){
    return WebView(
      initialUrl: "http://www.depkop.go.id/"
    );
  }
}