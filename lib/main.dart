import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fluro/fluro.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shop/app.dart';
import 'package:flutter_shop/common/Constants.dart';
import 'package:flutter_shop/common/routes.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:flutter_shop/pages/splash_page.dart';

import 'http/dio_util.dart';
import 'pages/index_page.dart';
import 'utils/global.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(await createApp());
}
/// 配置 DioUtil
void _dioUtilConfig() {
  BaseOptions options = DioUtil.getDefOptions();
  options.baseUrl = KConstant.baseUrl;
  Map<String, dynamic> headers = new Map();
  headers["X-Access-Token"] = Global.token;
  options.headers = headers;
  HttpConfig config = new HttpConfig(options: options);
  DioUtil().setConfig(config);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      routes: KRoutes.initPageRoutes,  //注册路由页面
//      onGenerateRoute: KRoutes.router.generator,
      debugShowCheckedModeBanner: false,
      title: '宠趣',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}

initRouters() {
//初始化路由
  final router = new Router();
  Routes.configRoutes(router);
  KRoutes.router = router;
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initRouters();
  }
}
