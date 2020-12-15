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
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Lorem Ipsum'),
                  subtitle: Text(
                    '12 Desember 2020',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image.asset('images/news-content-img/1a.jpg'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed leo libero. Vivamus pulvinar mauris varius ante fringilla, a sollicitudin risus placerat. Duis tempus augue tellus, eu euismod nisi vestibulum quis. Nunc interdum eget nisi sed lobortis. Vestibulum varius, lacus eu pharetra feugiat, mauris massa viverra metus, a dictum ligula nulla eget nulla.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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