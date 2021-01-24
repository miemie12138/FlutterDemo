import 'package:flutter/material.dart';

import 'main.dart';
import 'manage.dart';

class MackPurchase extends StatelessWidget {
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
                    "品牌专区",
                    style: TextStyle(color: Color(0xFF17191A), fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                LineContainer(0.5),
                Container(
                  margin: const EdgeInsets.only(
                      top: 22.5, bottom: 22.5, left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: Image.asset(
                            "assets/images/logo_zongshen_70.png",
                            fit: BoxFit.fill,
                          )),
                      Text("宗申集团",
                          style: TextStyle(
                              color: Color(0xFF17191A),
                              fontSize: 22,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 145,
                  child: Column(
                    children: [
                      Stack(
                          alignment: const FractionalOffset(0, 1.8),
                          children: [
                            Container(
                              height: 93,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF0F4F6),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text(
                                  "一段文字描述，描述当前的主营业务，也可以是一段话，"
                                  "可以用来吸引商家申请代理。一段文字描述一段文字描述，一段文字描述一段文字描述",
                                  style: TextStyle(
                                      color: Color(0xFF7A8F99), fontSize: 12)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Image.asset(
                                        "assets/images/logo_zongshen_100.png")),
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Image.asset(
                                        "assets/images/logo_senlan_100.png")),
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Image.asset(
                                        "assets/images/logo_saikelong_100.png"))
                              ],
                            )
                          ])
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: Container(
                              height: 44,
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFFAAB0B3), width: 0.5),
                                  borderRadius: BorderRadius.circular(3)),
                              alignment: Alignment.center,
                              child: Text("电话咨询",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)))),
                      Expanded(
                          child: Container(
                              height: 44,
                              margin: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFF17A1E6),
                                  borderRadius: BorderRadius.circular(3)),
                              alignment: Alignment.center,
                              child: Text("申请代理",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 34, bottom: 20, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/title_l.png",
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 17, right: 17),
                          child: Text("最热销",
                              style: TextStyle(
                                  color: Color(0xFF17191A), fontSize: 15))),
                      Image.asset(
                        "assets/images/title_r.png",
                        width: 11,
                        height: 12,
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImgColumn(),
                      ImgColumn2(),
                      ImgColumn(),
                    ],
                  ),
                ),
                LineContainer(0.5),
                Container(
                  height: 44,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("更多商品",
                          style: TextStyle(
                              color: Color(0xFFAAB0B3), fontSize: 12)),
                      Container(
                          margin: const EdgeInsets.only(left: 4),
                          child: Image.asset("assets/images/icon_more.png"))
                    ],
                  ),
                ),
                LineContainer(5),
                ListItem(true),
                LineContainer(5),
                ListItem(false),
                LineContainer(0.5),
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

class ImgColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            width: 105,
            height: 105,
            margin: const EdgeInsets.only(top: 10, right: 5, left: 5),
            padding: const EdgeInsets.only(top: 5, right: 5),
            decoration: BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage("assets/images/img_mtc.png")),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Image.asset("assets/images/num_2.png",
                alignment: Alignment.topRight)),
        Container(
          margin: const EdgeInsets.only(top: 4, bottom: 4),
          child: Text("O2氧-亮光银",
              style: TextStyle(color: Color(0xFF354046), fontSize: 12),
              textAlign: TextAlign.center),
        ),
        Text("销量15988",
            style: TextStyle(color: Color(0xFFF39B18), fontSize: 10),
            textAlign: TextAlign.center)
      ],
    );
  }
}

class ImgColumn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            width: 115,
            height: 115,
            margin: const EdgeInsets.only(right: 5, left: 5),
            padding: const EdgeInsets.only(top: 5, right: 5),
            decoration: BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage("assets/images/img_mtc.png")),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Image.asset("assets/images/num_1.png",
                alignment: Alignment.topRight)),
        Container(
          margin: const EdgeInsets.only(top: 4, bottom: 4),
          child: Text("O2氧-亮光银",
              style: TextStyle(color: Color(0xFF354046), fontSize: 12),
              textAlign: TextAlign.center),
        ),
        Text("销量15988",
            style: TextStyle(color: Color(0xFFF39B18), fontSize: 10),
            textAlign: TextAlign.center)
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  ListItem(this.isVis);

  final bool isVis;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo_zongshen_180.png"),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "长安集团",
                      style: TextStyle(
                          color: Color(0xFF17191A),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Offstage(
                      offstage: isVis,
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: Color(0x263689B3),
                            borderRadius: BorderRadius.circular(9)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icon_daili_32.png"),
                            Container(
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              child: Text(
                                "代理中",
                                style: TextStyle(
                                    color: Color(0xFF308FBF), fontSize: 9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, right: 5),
                  child: Text(
                    "这是，但是最多两行这是，但是最多两行这是，但是最多两行这是，但是最多两行这是，但是最多两行这是，但是最多两行",
                    style: TextStyle(color: Color(0xFFAAB0B3), fontSize: 11),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
              alignment: Alignment.centerRight,
              child: Image.asset("assets/images/arr_open_d.png")),
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
                    style: TextStyle(color: Color(0xFFAAB0B3), fontSize: 10),
                  )),
            ],
          )),
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
