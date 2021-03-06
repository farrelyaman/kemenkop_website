import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../data_struc.dart';

class HomeBody extends StatefulWidget{
  _HomeBodyState createState()=> _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>{
  final CarouselController _carouseController = CarouselController();
  int _headlineIndex = 0;
  
  @override
  Widget build(BuildContext context){
    final List<ArticleData> headline = ArticleList.of(context).articles.collections.sublist(0,5);

    return Column(
      children: <Widget>[ 
        Container(
          margin: EdgeInsets.symmetric(vertical: 15.0),
          child: CarouselSlider(items: headline.map((item) => Stack(
            children: [Positioned.fill(child: Image.asset(item.img, fit: BoxFit.fill)),
            Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.bottomLeft,
              child: Text(item.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0,color: Color(0xffffffff)))
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: ()=>{Navigator.pushNamed(context, '/article', arguments: headline[_headlineIndex])}
                )
              )
            )
            ])).toList(), 
            options: CarouselOptions(
              viewportFraction: 1.0,
              autoPlay: true,
              onPageChanged: (index, reason)=>{
                setState((){_headlineIndex = index;})
              }
            ),
            carouselController: _carouseController
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: headline.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: ()=>{_carouseController.animateToPage(entry.key)},
              child:Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _headlineIndex == entry.key ? Color(0xE6000000):Color(0x66000000)
                )
              )
            );
          }).toList()
        ),
        Expanded(
          child: _listBuild()
        )
      ]
    );
  }

  Widget _listBuild(){
    final List<ArticleData> readMore = ArticleList.of(context).articles.collections.sublist(5);
    
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Color(0x4D000000)),  
        itemCount: readMore.length,
         itemBuilder: ((context, index){
          return _rowBuild(readMore[index]);
        }) 
    );
  }

  Widget _rowBuild(ArticleData data){
    return ListTile(
      leading: Container(
          height: 75,
          width: 100,
          child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(data.img, fit: BoxFit.fill)
        )
      ),
      title:Text(data.title),
      subtitle: Text(data.date),
      onTap: ()=>{Navigator.pushNamed(context, '/article', arguments: data)},
    );
  }
}