import 'dart:js';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    title:"xz",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: RxDartTest(),
  ));
}

class RxDartTest extends StatefulWidget {

  @override
  _RxDartTestState createState() => new _RxDartTestState();
}

class _RxDartTestState extends State<RxDartTest> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
    Provider<String>.value(value: "123"),
    Provider<int>.value(value: 12),
    ],child:
      Scaffold(
        appBar:  AppBar(
          title:  Text('a',style: Theme.of(context).textTheme.title,),
        ),
        body:  Container(
            //宽度
            width:100.0 ,
            //高度
            height: 200.0,
            // 盒子样式
            decoration: new BoxDecoration(
                color: Colors.pinkAccent,
                //设置Border属性给容器添加边框
                border: new Border.all(
                    //为边框添加颜色
                    color: Colors.black,
                    //边框宽度
                    width: 1.0,
                ),
            ),
            child:Text("sdasd${Provider.of<String>(context)}") ,
        ),
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
