import 'package:flutter/material.dart';
import './ui/homepage/main.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff101010)
      ),
      title: "News Template",
      home: HomeScreen()
    );
  }
}