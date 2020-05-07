 /// @Author: yangxichuan
/// @Date: 2020-04-02 18:17:44
/// @LastEditTime: 2020-04-07 16:59:09
/// @LastEditors: yangxichuan
/// @Description: App 一些公用的字段, 可以在此同步读取

import 'package:flutter/material.dart';
import 'package:flutter_shop/models/user_info.dart';

/// App 一些公用的字段, 可以在此同步读取
class Global {

  /// Release  
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  /// 登录状态
  static bool _isLogined;
  static bool get isLogined => _isLogined ?? false;
  static void setIsLogined(bool isLogined) => _isLogined = isLogined;

  /// 用户信息
  static UserInfo _userInfo;
  static UserInfo get userInfo => _userInfo ?? null;
  static void setUserInfo(UserInfo info) => _userInfo = info;
  
  /// token
  static String _token;
  static String get token => _token ?? "";
  static void setToken(String token) => _token = token;

  /// context, 需要在底部
  static BuildContext _context;
  static void setContext(BuildContext context) => _context = context;
  static BuildContext get context => _context ?? null;
}