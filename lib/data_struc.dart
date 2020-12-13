import 'package:flutter/material.dart';

class ArticleData{
  final String title;
  final String date;
  final String img;
  final String desc;
  
  ArticleData(this.title, this.date, this.img, this.desc);
}

class Articles{
  List<ArticleData> collections;

  Articles(this.collections);
}

//InheritenceWidget (Global Variable)
class ArticleList extends InheritedWidget{
  final Articles articles;

  ArticleList({Key key, this.articles, @required Widget child}): super(key: key, child: child);

  static ArticleList of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<ArticleList>();
  }

  @override
  bool updateShouldNotify(ArticleList old) {
    return articles.collections != old.articles.collections;
  }
}