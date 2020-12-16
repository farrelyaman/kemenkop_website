import 'package:flutter/material.dart';
import 'package:news_app/data_struc.dart';

class ArticleDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ArticleData article = ModalRoute.of(context).settings.arguments;
    List<ArticleData> articles = [...ArticleList.of(context).articles.collections];
    articles.remove(article);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              article.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)
            ),
            subtitle: Text(
              article.date,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset(article.img),
          Padding(
            padding: EdgeInsets.all(13.0),
            child: Text(article.desc)
          ),
          Divider(
            color: Colors.black,
            height: 10,
            thickness: 0.5,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: EdgeInsets.all(13.0),
            child:Text(
            "Baca Juga", 
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
            )
          ),
          ..._generateReadMore(articles, context)
        ],
      ),
    );
  }

  List<Widget> _generateReadMore(List<ArticleData> articles, BuildContext context){
    List<Widget> data = [];
    int lenArticles = articles.length * 2;
    ArticleData article;

    for(var i=0;i<lenArticles;i++){
      if(i.isEven){
        data.add(Divider(color: Color(0x4D000000)));
      } else{
        article = articles[i ~/ 2];
        data.add(_GenerateRow(article));
      }
    }
    return data;
  }
}

class _GenerateRow extends StatelessWidget{
  final ArticleData article;
  _GenerateRow(this.article);

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: Container(
        height: 75,
        width: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(article.img, fit: BoxFit.fill)
        )
      ),
      title:Text(article.title),
      subtitle: Text(article.date),
      onTap: ()=>{Navigator.pushNamed(context, '/article', arguments: article)},
    );
  }
}
