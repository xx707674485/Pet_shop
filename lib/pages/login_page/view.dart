import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/res/resources.dart';
import 'package:flutter_shop/widgets/load_image.dart';

import 'state.dart';

Widget buildView(
    LoginPageState state, Dispatch dispatch, ViewService viewService) {
  return Builder(builder: (cxt) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, //输入框抵住键盘
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Column(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: 'headImage',
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588155851763&di=29f1ed35bcc9c405e3230be67fc2bed4&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F838ba61ea8d3fd1f1d36c25d324e251f95ca5f9d.jpg'),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text("宠趣"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Form(
                              //设置globalKey，用于后面获取FormState
                              //开启自动校验
                              autovalidate: true,
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: '请输入用户名',
                                      hintText: "用户名或邮箱",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                    //校验用户
                                    validator: (value) {
                                      return value.trim().length > 0
                                          ? null
                                          : "用户名不能为空";
                                    },
                                    //当 Form 表单调用保存方法 Save时回调的函数。
                                    onSaved: (value) {
                                    },
                                    // 当用户确定已经完成编辑时触发
                                    onFieldSubmitted: (value) {

                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: '请输入密码',
                                      hintText: '你的登录密码',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                      prefixIcon: Icon(Icons.lock),
                                    ),
                                    //是否是密码
                                    obscureText: true,
                                    //校验密码
                                    validator: (value) {
                                      return value.length < 6
                                          ? '密码长度不够 6 位'
                                          : null;
                                    },
                                    onSaved: (value) {},
                                  )
                                ],
                              ),
                              //内容改变的回调
                              onChanged: () {
                                print("onChanged");
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: RaisedButton(
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(15),
                                    child: Text(
                                      "登录",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    textColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Opacity(
              opacity: 1,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: LoadImage(
                          'https://hellorfimg.zcool.cn/preview260/1034939470.jpg'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: double.infinity,
                      height: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  });
}
