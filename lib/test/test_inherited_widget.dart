import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/test/count_model.dart';
import 'package:flutter_shop/test/share_inherited.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    title: '',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: (TestInheritedWidget()),
  ));
}

class TestInheritedWidget extends StatefulWidget {
  @override
  _TestInheritedWidgetState createState() => new _TestInheritedWidgetState();
}

class _TestInheritedWidgetState extends State<TestInheritedWidget> {
  CountModel _countModel=new CountModel(0);
 ChangeNotifier
  _add(){
    setState(() {
      _countModel= CountModel(_countModel.count+1);
    });
  }
  _reduce(){
    setState(() {
      _countModel= CountModel(_countModel.count-1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShareInherited(
        countModel: _countModel,
        add: _add,
        reduce: _reduce,
        child: Scaffold(
          appBar: AppBar(
            title: Text(''),
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("click time of button"),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: _TextWidget(),
                ),
              ],
            ),
          ),
        ));
  }
}



class _TextWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TextWidgetState();
  }
}
class _TextWidgetState extends State<_TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child:  Text("${ShareInherited.of(context).countModel.count}"),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child:  RaisedButton(
                child: Text("-"),
                onPressed: ShareInherited.of(context).reduce,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child:  RaisedButton(
                textTheme: ButtonTextTheme.accent,
                child: Text("+"),
                onPressed: ShareInherited.of(context).add,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child:  RaisedButton(
                textTheme: ButtonTextTheme.accent,
                child: Text("+"),
                onPressed: ShareInherited.of(context).add,
              ),
            ),
          ],
      ),
    );
  }
}
