import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/res/resources.dart';
import 'package:flutter_shop/widgets/load_image.dart';

class LoginActivity extends StatefulWidget {
  @override
  LoginActivityState createState() => new LoginActivityState();
}

class LoginActivityState extends State<LoginActivity> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
    return
      Container(
      color: Colours.bg_color,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            child: Container(
              width: 72.0,
              height: 72.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    'https://hellorfimg.zcool.cn/preview260/1034939470.jpg',
                  ),
                ),
              ),
            ),
          )),
          Container(
            margin: EdgeInsets.only(bottom: 0),
            alignment: Alignment.bottomCenter,
            child: LoadImage(
                'https://hellorfimg.zcool.cn/preview260/1034939470.jpg'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(LoginActivity oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  _onSearch(String value) {}
}
