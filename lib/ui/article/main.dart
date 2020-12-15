import 'package:flutter/material.dart';
import 'package:news_app/data_struc.dart';
import 'package:readmore/readmore.dart';

class ArticleDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ArticleData article = ModalRoute.of(context).settings.arguments;
    print(article.img);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: Text(article.title),
                  subtitle: Text(
                    article.date,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image.asset(article.img),
                Padding(
                  padding: EdgeInsets.all(13.0),
                  child: ReadMoreText(
                    '\n' + article.desc,
                    trimLines: 10,
                    colorClickableText: Colors.blue,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Source : https://lorem.ipsum.com/'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
