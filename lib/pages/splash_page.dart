//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:fluro/fluro.dart';
//import 'package:flustars/flustars.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_shop/common/Constants.dart';
//import 'package:flutter_shop/common/routes.dart';
//import 'package:flutter_shop/models/splash_model.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
//import 'package:rxdart/rxdart.dart';

//class SplashPage extends StatefulWidget {
//  @override
//  SplashPageState createState() => new SplashPageState();
//}

//class SplashPageState extends State<SplashPage> {
//
//  TimerUtil _timerUtil;
//  List<String> _guideImageList=[
//    "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png",
//    "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png",
//    "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png",
//    "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png"
//  ];
//
//  List<Widget> _bannerList = new List();
//
//  int _status = 0;
//  int _count = 3;
//
//  SplashModel _splashModel;
//
//  @override
//  void initState() {
//    super.initState();
//    _init();
//  }
//
//  void _init() {
//    _loadSplashData();
//    Future.delayed(new Duration(milliseconds: 500)).then((onValue){
////      SpUtil.putBool(Constant.key_guide, false);
//      if (SpUtil.getBool(KConstant.keyGuide, defValue: true) &&
//          ObjectUtil.isNotEmpty(_guideImageList)) {
//        SpUtil.putBool(KConstant.keyGuide, false);
//        _initBanner();
//      } else {
//        _initSplash();
//      }
//    });
//  }
//
//  void _loadSplashData() {
//    _splashModel = SpUtil.getObj(
//        Constant.key_splash_model, (v) => SplashModel.fromJson(v));
//    if (_splashModel != null) {
//      setState(() {});
//    }
//    HttpUtils httpUtil = new HttpUtils();
//    httpUtil.getSplash().then((model) {
//      if (!ObjectUtil.isEmpty(model.imgUrl)) {
//        if (_splashModel == null || (_splashModel.imgUrl != model.imgUrl)) {
//          SpUtil.putObject(Constant.key_splash_model, model);
//          setState(() {
//            _splashModel = model;
//          });
//        }
//      } else {
//        SpUtil.putObject(Constant.key_splash_model, null);
//      }
//    });
//  }
//
//  void _initBanner() {
//    _initBannerData();
//    setState(() {
//      _status = 2;
//    });
//  }
//
//  void _initBannerData() {
//    for (int i = 0, length = _guideImageList.length; i < length; i++) {
//      if (i == length - 1) {
//        _bannerList.add(new Stack(
//          children: <Widget>[
//            new Image.asset(
//              _guideImageList[i],
//              fit: BoxFit.fill,
//              width: double.infinity,
//              height: double.infinity,
//            ),
//            new Align(
//              alignment: Alignment.bottomCenter,
//              child: new Container(
//                margin: EdgeInsets.only(bottom: 160.0),
//                child: new InkWell(
//                  onTap: () {
//                    _goMain();
//                  },
//                  child: new CircleAvatar(
//                    radius: 48.0,
//                    backgroundColor: Colors.indigoAccent,
//                    child: new Padding(
//                      padding: EdgeInsets.all(2.0),
//                      child: new Text(
//                        '立即体验',
//                        textAlign: TextAlign.center,
//                        style: TextStyle(color: Colors.white, fontSize: 16.0),
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ));
//      } else {
//        _bannerList.add(new Image.network(
//          _guideImageList[i],
//          fit: BoxFit.fill,
//          width: double.infinity,
//          height: double.infinity,
//        ));
//      }
//    }
//  }
//
//  void _initSplash() {
//    if (_splashModel == null) {
//      _goMain();
//    } else {
//      _doCountDown();
//    }
//  }
//
//  void _doCountDown() {
//    setState(() {
//      _status = 1;
//    });
//    _timerUtil = new TimerUtil(mTotalTime: 3 * 1000);
//    _timerUtil.setOnTimerTickCallback((int tick) {
//      double _tick = tick / 1000;
//      setState(() {
//        _count = _tick.toInt();
//      });
//      if (_tick == 0) {
//        _goMain();
//      }
//    });
//    _timerUtil.startCountDown();
//  }
//
//  void _goMain() {
//    Navigator.of(context).pushNamed(Routes.rIndexPage);
//  }
//
//  Widget _buildSplashBg() {
//    return new Image.network(
//      "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png",
//      width: double.infinity,
//      fit: BoxFit.fill,
//      height: double.infinity,
//    );
//  }
//
//  Widget _buildAdWidget() {
//    if (_splashModel == null) {
//      return new Container(
//        height: 0.0,
//      );
//    }
//    return new Offstage(
//      offstage: !(_status == 1),
//      child: new InkWell(
//        onTap: () {
//          if (ObjectUtil.isEmpty(_splashModel.url)) return;
//          _goMain();
////          NavigatorUtil.pushWeb(context,
////              title: _splashModel.title, url: _splashModel.url);
//        },
//        child: new Container(
//          alignment: Alignment.center,
//          child: new CachedNetworkImage(
//            width: double.infinity,
//            height: double.infinity,
//            fit: BoxFit.fill,
//            imageUrl: "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png",
//            placeholder: (context, url) => _buildSplashBg(),
//            errorWidget: (context, url, error) => _buildSplashBg(),
//          ),
//        ),
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Material(
//      child: new Stack(
//        children: <Widget>[
//          new Offstage(
//            offstage: !(_status == 0),
//            child: _buildSplashBg(),
//          ),
//          new Offstage(
//            offstage: !(_status == 2),
//            child: ObjectUtil.isEmpty(_bannerList)
//                ?  Container()
//                :  Swiper(
//              itemBuilder:
//              ,
//              itemCount: 4,
//              autoplay: false,
//          )),
//          _buildAdWidget(),
//          new Offstage(
//            offstage: !(_status == 1),
//            child: new Container(
//              alignment: Alignment.bottomRight,
//              margin: EdgeInsets.all(20.0),
//              child: InkWell(
//                onTap: () {
//                  _goMain();
//                },
//                child: new Container(
//                    padding: EdgeInsets.all(12.0),
//                    child: new Text(
//                      IntlUtil.getString(context, Ids.jump_count,
//                          params: ['$_count']),
//                      style: new TextStyle(fontSize: 14.0, color: Colors.white),
//                    ),
//                    decoration: new BoxDecoration(
//                        color: Color(0x66000000),
//                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                        border: new Border.all(
//                            width: 0.33, color: KColours.divider))),
//              ),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//    if (_timerUtil != null) _timerUtil.cancel(); //记得在dispose里面把timer cancel。
//  }
//}

import 'dart:async';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shop/common/Constants.dart';
import 'package:flutter_shop/pages/login_page/login_activity.dart';
import 'package:flutter_shop/provider/theme_provider.dart';
import 'package:flutter_shop/utils/image_utils.dart';
import 'package:flutter_shop/widgets/load_image.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _status = 0;

//  List<String> _guideList = ['timg', 'dog', 'guide'];

  List<String> _guideList = [
    "https://img.zcool.cn/community/0153c05e0ffcb4a80121651884a62d.jpg@0o.jpg",
    "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png",
    "https://img.zcool.cn/community/0153c05e0ffcb4a80121651884a62d.jpg@0o.jpg",
    "https://img.zcool.cn/community/018cdf5d71df1ea801202f17a5c771.png@1280w_1l_2o_100sh.png"
  ];
  StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await SpUtil.getInstance();
      // 由于SpUtil未初始化，所以MaterialApp获取的为默认主题配置，这里同步一下。
      Provider.of<ThemeProvider>(context, listen: false).syncTheme();
      if (SpUtil.getBool(KConstant.keyGuide, defValue: true)) {
        /// 预先缓存图片，避免直接使用时因为首次加载造成闪动
        _guideList.forEach((image) {
          precacheImage(ImageUtils.getAssetImage(image), context);
        });
      }
      _initSplash();
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  void _initGuide() {
    setState(() {
      _status = 1;
    });
  }

  void _initSplash() {
    Future.delayed(Duration(milliseconds: 1500)).then((onValue) {
      if (SpUtil.getBool(KConstant.keyGuide, defValue: true)) {
        SpUtil.putBool(KConstant.keyGuide, false);
        _initGuide();
      } else {
        _goLogin();
      }
    });
  }

  _goLogin() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginActivity()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: _status == 0
            ? GestureDetector(
                onTap: () {
                  _goLogin();
                },
                child: FractionallyAlignedSizedBox(
                    heightFactor: 1,
                    widthFactor: 1,
                    leftFactor: 1,
                    bottomFactor: 0,
                    child: const LoadImage("logo")))
            : Swiper(
                key: const Key('swiper'),
                itemCount: _guideList.length,
                loop: false,
                itemBuilder: (_, index) {
                  return LoadImage(
                    _guideList[index],
                    key: Key(_guideList[index]),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  );
                },
                onTap: (index) {
                  if (index == _guideList.length - 1) {
                    _goLogin();
                  }
                },
              )
//      scrollDirection: Axis.vertical,
//        color: ThemeUtils.getBackgroundColor(context),
        );
  }
}
