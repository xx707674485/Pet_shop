import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/pages/category_page.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:flutter_shop/pages/navigation_home_screen.dart';
import 'package:flutter_shop/pages/personal_page.dart';
import 'package:flutter_shop/pages/shopcar_page.dart';
import 'package:flutter_shop/widgets/custom_drawer/home_drawer.dart';

class IndexPage extends StatefulWidget {
  @override
  IndexPageState createState() => new IndexPageState();
}

int currentIndex;

class IndexPageState extends State<IndexPage> {
  //底部导航栏
  final List<BottomNavigationBarItem> bottomBars = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text("主页"),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.loop),
      title: Text("社区"),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text("购物车"),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      title: Text("我的"),
    ),
  ];

  final pages = [HomePage(), CategoryPage(), ShopcarPage(), PersonalPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('宠趣'),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomBars,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: pages[currentIndex],
        );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(IndexPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
