import 'package:flutter/material.dart';

class ShopcarPage extends StatefulWidget {
  @override
  ShopcarPageState createState() => new ShopcarPageState();
}

class ShopcarPageState extends State<ShopcarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:Text("购物车",style: TextStyle(color: Colors.pink,fontSize: 16.0),)
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
  void didUpdateWidget(ShopcarPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
