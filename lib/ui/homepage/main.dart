import 'package:flutter/material.dart';
import 'appbar.dart';
import 'bodywrap.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TopBar(),
        body: TabBarView(
          children: <Widget>[
            BodyWrapper(choiceIndex:0),
            BodyWrapper(choiceIndex:1)
          ],
        )
      )
    );
  }
}