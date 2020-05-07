import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'menu_page.dart';
import 'zoom_scaffold.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider.value(value: MenuController())],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Zoom Menu',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomScaffold(
      menuScreen: MenuScreen(),
//            contentScreen: Layout(
//                contentBuilder: (cc) => Container(
//                  child: Container(
//                    child: Text('asdasdasd'),
//                  ),
//                )),
    );
  }
}
