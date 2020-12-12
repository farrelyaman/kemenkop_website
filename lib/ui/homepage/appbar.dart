import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget{
  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Image.asset('images/logo.jpg'),
      toolbarHeight: 75,
      backgroundColor: Color(0xffffffff),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: TopTabBar()
      )
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(150);
}

class TopTabBar extends StatefulWidget{
  @override
  _TopTabBarState createState() => _TopTabBarState();
}

class _TopTabBarState extends State<TopTabBar>{
  final List<Tab> tabList = <Tab> [
    Tab(icon: Icon(Icons.article_rounded),text: 'Berita'),
    Tab(icon: Icon(Icons.announcement_rounded),text: 'Pengumuman')
  ];

  @override
  Widget build(BuildContext context){
    return Material(
      color: Color(0xff101010),
      child: TabBar(    
        tabs: tabList
      )
    );
  }
}
