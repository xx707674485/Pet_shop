import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/load_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MaterialApp(
    title: '测试',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: (_TextWidget()),
  ));
}

class _TextWidget extends StatefulWidget {
  @override
  _TextWidgetState createState() => new _TextWidgetState();
}

class _TextWidgetState extends State<_TextWidget> {
  List<String> swipItems = [
    "https://img.zcool.cn/community/0153c05e0ffcb4a80121651884a62d.jpg@0o.jpg",
    "https://img.zcool.cn/community/0153c05e0ffcb4a80121651884a62d.jpg@0o.jpg",
    "https://img.zcool.cn/community/0153c05e0ffcb4a80121651884a62d.jpg@0o.jpg"
  ];

  updataState(t) {
    if (t < 0.0) {
      t = 0.0;
    } else if (t > 1.0) {
      t = 1.0;
    } else {
      t = t;
    }
    setState(() {
      toolbarOpacity = t;
    });
  }

  double toolbarOpacity = 1.0;
  double appbarHeigth;

  @override
  Widget build(BuildContext context) {
    double pxc = MediaQuery.of(context).devicePixelRatio / 750;
    MediaQuery.of(context).removePadding(removeTop: true);
    return NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollNotification) {
          ScrollMetrics metrics = scrollNotification.metrics;
          if (scrollNotification is ScrollUpdateNotification &&
              scrollNotification.depth == 0) {
            double t = metrics.pixels / 98.0;
            updataState(t);

            print(scrollNotification.metrics.pixels); //打印滚动位置
          }
          print('------------------------');
          return true;
        },
        child: Scaffold(
          body: Stack(

            children: <Widget>[
              MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        height: 300,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return LoadImage(
                              swipItems[index],
                              fit: BoxFit.cover,
                            );
                          },
                          itemCount: 3,
                          autoplay: true,
                          pagination: new SwiperPagination(builder: SwiperPagination.dots),
                        ),
                      );
                    }
                    return ListTile(
                      title: Text("ListTile:$index"),
                    );
                  },
                ),
              ),
              Opacity(
                opacity: toolbarOpacity,
                child: Container(
                  height: 98,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: Text(
                        "ScrollerDemo",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
