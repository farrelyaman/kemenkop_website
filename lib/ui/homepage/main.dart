import 'package:flutter/material.dart';
import 'appbar.dart';
import 'news.dart';
import 'announcement.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TopBar(),
        body: TabBarView(
          children: <Widget>[
            News(),
            Announce()
          ],
        )
      )
    );
  }
}