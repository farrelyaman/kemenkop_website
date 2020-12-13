import 'package:flutter/material.dart';
import 'package:news_app/data_struc.dart';

class ArticleDetail extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    final ArticleData article = ModalRoute.of(context).settings.arguments;
    print(article.img);
    
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:<Widget>[

        ]
      )
    );
  }
}