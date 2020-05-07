import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static Router router;

  static const String root = "/";
  static const String rHomePage = "home_page"; //主頁
  static const String rShopCarPage = "shop_car_page"; //购物车页面
  static const String rPersonalPage = "personal_page"; //个人中心
  static const String rCategoryPage = "category_page"; //分类页面
  static const String rIndexPage = "index_page"; //主页页面

  static void configRoutes(Router router) {
    ///未发现对应的route
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      print('router not found!');
      return;
    });

//    ///主页
//    router.define(rIndexPage, handler: Handler(
//        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//      return IndexPage();
//    }));
  }

  // 对参数进行encode，解决参数中有特殊字符，影响fluro路由匹配
  static Future navigateTo(BuildContext context, String path,
      {Map<String, dynamic> params,
      TransitionType transition = TransitionType.native}) {
    String query = "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key]);
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    print('我是navigateTo传递的参数：$query');
    path = path + query;
    return router.navigateTo(context, path, transition: transition);
  }
}
