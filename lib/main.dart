import 'package:flutter/material.dart';
import 'package:news_app/data_struc.dart';
import './ui/homepage/main.dart';
import './ui/article/main.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ArticleList(
      articles: Articles(<ArticleData>[]),
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff101010)
        ),
        title: "News Template",
        routes: {
          '/': (context) => HomeScreen(),
          '/article': (context) => ArticleDetail()
        }
      )
    );
  }
}


