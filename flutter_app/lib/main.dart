import 'package:flutter/material.dart';
import 'package:flutterapp/purchase.dart';

import 'manage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xfff7f7f7),
            height: MediaQuery.of(context).size.height - 80,
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                SliverList(
                    delegate: new SliverChildListDelegate([
                  Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.fill,
                      scale: 1,
                      width: 135,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/banner.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 12, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        TitleRow("assets/images/toutiao.png", "", false),
                        Container(
                          color: Colors.white,
                          height: 130,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ListContainer(),
                              ListContainer(),
                              ListContainer(),
                              ListContainer(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 12, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        TitleRow("assets/images/ic_tuijian.png", "爆款推荐", false),
                        Container(
                          color: Colors.white,
                          height: 140,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ListContainer2(),
                              ListContainer2(),
                              ListContainer2(),
                              ListContainer2(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 12, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        TitleRow("assets/images/ic_new.png", "新品推荐", false),
                        ListContainer3(),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 12, 10, 15),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        TitleRow("assets/images/ic_video.png", "精彩视频", true),
                        ListContainer4(),
                        ListContainer4(),
                      ],
                    ),
                  )
                ]))
              ],
            ),
          ),
          TabHome()
        ],
      ),
    );
  }
}

class TitleRow extends StatelessWidget {
  TitleRow(this.imgs, this.title, this.isVis);

  final String imgs, title;
  final bool isVis;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: new DecorationImage(
            fit: BoxFit.cover,
            image: new AssetImage("assets/images/shading_recomend.png")),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Image.asset(imgs, height: 22),
                Container(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(title,
                        style: new TextStyle(
                            color: Color(0xFF17191A),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)))
              ],
            ),
            Offstage(
              offstage: isVis,
              child: Row(children: [
                Container(
                    child: Text("更多",
                        style: new TextStyle(
                            color: Color(0xFFAAB0B3), fontSize: 11))),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                  child: Image.asset("assets/images/down_out.png",
                      scale: 1, height: 7),
                )
              ]),
            ),
          ]),
    );
  }
}

class ListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, //主轴
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.asset(
                "assets/images/img_mtc.png",
                fit: BoxFit.fill,
                width: 130,
                height: 73,
              )),
          Container(
              width: 130,
              padding: const EdgeInsets.fromLTRB(5, 9, 5, 0),
              child: Text(
                "最新RX6，限时订货政策，欢迎经销商朋.最新RX6，限时订货政策，欢迎经销商朋.",
                style: new TextStyle(color: Color(0xFF505257), fontSize: 11),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ))
        ],
      ),
    );
  }
}

class ListContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, //主轴
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.asset(
                "assets/images/img_mtc.png",
                fit: BoxFit.fill,
                width: 105,
                height: 105,
              )),
          Container(
              width: 105,
              margin: const EdgeInsets.only(top: 5),
              child: Text("赛科龙RX3街跑",
                  style: new TextStyle(color: Color(0xFF17191A), fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center))
        ],
      ),
    );
  }
}

class ListContainer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start, //主轴
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: const FractionalOffset(0, 0.1),
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 2),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Image.asset(
                          "assets/images/img_mtc.png",
                          fit: BoxFit.fill,
                          width: 140,
                          height: 140,
                        )),
                  ),
                  Container(
                    width: 22,
                    height: 22,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Color(0xFFE61717),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(3))),
                    child: Text("新",
                        style: new TextStyle(
                            color: Color(0xFFFFFFFF), fontSize: 12)),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 7, 10, 0),
                width: MediaQuery.of(context).size.width - 192,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("赛科龙RX1-02 休旅型",
                        style: new TextStyle(
                            color: Color(0xFF17191A), fontSize: 16)),
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 15),
                      padding: const EdgeInsets.fromLTRB(8, 1, 8, 1),
                      decoration: BoxDecoration(
                          color: Color(0xFFEBF3FC),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Text("为休旅而新",
                          style: new TextStyle(
                              color: Color(0xFF409FFE), fontSize: 11)),
                    ),
                    Text("新车上市，至尊选择！\n赛科龙全新出发！",
                        style: new TextStyle(
                            color: Color(0xFFAAB0B3), fontSize: 11, height: 2)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          height: 32,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            color: Color(0xFF17A1E6),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text("详情",
                              style: new TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 12)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 16,
            width: 34,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/num_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("1", style: TextStyle(color: Colors.white, fontSize: 10)),
                Text(
                  "5",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListContainer4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, //主轴
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: const FractionalOffset(0.5, 0.5),
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Image.asset(
                    "assets/images/banner.png",
                    fit: BoxFit.fill,
                    width: 130,
                    height: 73,
                  )),
              Container(
                width: 20,
                height: 20,
                child: Image.asset("assets/images/btn_video.png"),
              ),
            ],
          ),
          Container(
            height: 73,
            width: MediaQuery.of(context).size.width - 190,
            margin: const EdgeInsets.fromLTRB(10, 4, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "物必达快讯 | 物必达受邀出席第19届亚太零售商大会暨国…物必达快讯 | 物必达受邀出席第19届亚太零售商大会暨国… ",
                  style: new TextStyle(color: Color(0xFF17191A), fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text("2019.09.06",
                    style:
                        new TextStyle(color: Color(0xFFAAB0B3), fontSize: 11)),
              ],
            ),
          )
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
                    style: TextStyle(color: Color(0xFF17A1E6), fontSize: 10),
                  )),
            ],
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
              child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Management();
                        }));
                  },
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
                            style: TextStyle(
                                color: Color(0xFFAAB0B3), fontSize: 10),
                          )),
                    ],
                  )))
        ],
      ),
    );
  }
}
