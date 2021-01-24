import 'package:flutter/material.dart';

import 'main.dart';
import 'purchase.dart';

class Management extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height - 50,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 30),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverList(
                  delegate: new SliverChildListDelegate([
                Container(
                  height: 44,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "管理",
                    style: TextStyle(color: Color(0xFF17191A), fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                LineContainer(0.5),
                TitleContainer("用户档案"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ItemContainer("用户管理", "assets/images/ic-usered.png"),
                    ItemContainer("维保管理", "assets/images/ic_maintenance.png"),
                  ],
                ),
                LineContainer(5),
                TitleContainer("创库管理"),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ItemContainer("入库管理", "assets/images/ic-ruku.png"),
                        ItemContainer("入库管理", "assets/images/ic-ruku.png"),
                        ItemContainer("入库管理", "assets/images/ic-ruku.png"),
                       ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ItemContainer("入库管理", "assets/images/ic-ruku.png"),
                        ItemContainer("入库管理", "assets/images/ic-ruku.png"),
                      ],
                    ),
                  ],
                ),
                LineContainer(5),
                TitleContainer("数据分析"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ItemContainer("经营数据", "assets/images/ic-shuju.png"),
                  ],
                ),
              ]))
            ],
          ),
        ),
        TabHome()
      ],
    ));
  }
}

class LineContainer extends StatelessWidget {
  LineContainer(this.dheight);

  final double dheight;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: dheight,
      color: Color(0xFFF5F7F7),
    );
  }
}

class LineContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 0.5,
      color: Color(0xFFF5F7F7),
    );
  }
}

class TitleContainer extends StatelessWidget {
  TitleContainer(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          height: 40,
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 21, right: 10),
          child: Text(
            title,
            style: TextStyle(color: Color(0xFF17191A), fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
        LineContainer2()
      ],
    );
  }
}

class ItemContainer extends StatelessWidget {
  ItemContainer(this.title, this.imgs);

  final String title, imgs;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 38, bottom: 10),
      child: Column(
        children: [
          Container(child: Image.asset(imgs)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF666666), fontSize: 12),
              )),
        ],
      ),
    );
  }
}

class TabHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyHomePage();
              }));
            },
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: Image.asset("assets/images/tab_home.png")),
                Container(
                    margin: const EdgeInsets.only(top: 1.5),
                    child: Text(
                      "首页",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFAAB0B3), fontSize: 10),
                    )),
              ],
            ),
          )),
          Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return MackPurchase();
                        }));
                  },
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 7),
                          child: Image.asset("assets/images/tab_caigou.png")),
                      Container(
                          margin: const EdgeInsets.only(top: 1.5),
                          child: Text(
                            "采购",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFAAB0B3), fontSize: 10),
                          )),
                    ],
                  ))),
          Expanded(
              child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 7),
                  child: Image.asset("assets/images/tab_order.png")),
              Container(
                  margin: const EdgeInsets.only(top: 1.5),
                  child: Text(
                    "订单",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFFAAB0B3), fontSize: 10),
                  )),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 7),
                  child: Image.asset("assets/images/tab_guanli.png")),
              Container(
                  margin: const EdgeInsets.only(top: 1.5),
                  child: Text(
                    "管理",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFFAAB0B3), fontSize: 10),
                  )),
            ],
          ))
        ],
      ),
    );
  }
}
