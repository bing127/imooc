import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//轮播图
import 'silde_page.dart';
import 'ad_page.dart';
import 'menu_page.dart';
import 'employment_Page.dart';
import 'column_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with {


  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0.0,
        title: Container(
          height: ScreenUtil().setHeight(60.0),
          margin: EdgeInsets.only(right: ScreenUtil().setWidth(10.0)),
          decoration: BoxDecoration(
              color: Color(0xffF0F0F0),
              borderRadius: BorderRadius.all(
                  Radius.circular(ScreenUtil().setWidth(40.0)))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.search,
                  color: Color(0xFFC0C0C0),
                  size: ScreenUtil().setSp(35.0),
                ),
              ),
              Text(
                "GO语言",
                style: TextStyle(
                    color: Color(0xFFC0C0C0),
                    fontSize: ScreenUtil().setSp(30.0)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(10.0),
                    right: ScreenUtil().setWidth(10.0)),
                child: Text(
                  "●",
                  style: TextStyle(
                      color: Color(0xFFC0C0C0),
                      fontSize: ScreenUtil().setSp(10.0)),
                ),
              ),
              Text(
                "小程序",
                style: TextStyle(
                    color: Color(0xFFC0C0C0),
                    fontSize: ScreenUtil().setSp(30.0)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(10.0),
                    right: ScreenUtil().setWidth(10.0)),
                child: Text(
                  "●",
                  style: TextStyle(
                      color: Color(0xFFC0C0C0),
                      fontSize: ScreenUtil().setSp(10.0)),
                ),
              ),
              Text(
                "JAVA",
                style: TextStyle(
                    color: Color(0xFFC0C0C0),
                    fontSize: ScreenUtil().setSp(30.0)),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.email,
                color: Color(0xFFC0C0C0),
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(30.0),
            right: ScreenUtil().setWidth(30.0)),
        child: Column(
          children: <Widget>[
            SildePage(),
            AdPage(),
            MenuPage(),
            EmploymentPage(),
            Column(
              children: JsonList.map<Widget>((item) {
                return ColumnPage(item:item);
              }).toList(),
            )
          ],
        ),
      )),
    );
  }



  var JsonList = [
    {
      "title": "实战推荐",
      "list": [
        {
          "img": "https://img2.mukewang.com/szimg/5d14215f08545a6b06000338.jpg",
          "title": "Spring Cloud Alibaba微服务从入门到进阶",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img1.mukewang.com/szimg/5cbf00c608f52a3b06000338.jpg",
          "title": "前端下一代开发语言TypeScript  从基础到axios实战",
          "grade": "中级",
          "num": "1280",
          "money": "388.0"
        },
        {
          "img": "https://img1.mukewang.com/szimg/5d25400a08fa408c06000338.jpg",
          "title": "毕设神器 Java主流技术栈SSM+SpringBoot商铺系统",
          "grade": "初级",
          "num": "2398",
          "money": "299.0"
        },
        {
          "img": "https://img2.mukewang.com/szimg/5ccec7ba08430b1d06000338.jpg",
          "title": "纯正商业级应用 Node.js Koa2开发微信小程序服务端",
          "grade": "中级",
          "num": "780",
          "money": "366.0"
        },
        {
          "img": "https://img1.mukewang.com/szimg/59b8a486000107fb05400300.jpg",
          "title": "全面系统python3入门+进阶课程 零基础学python 小白也能听懂",
          "grade": "初级",
          "num": "8961",
          "money": "366.0"
        }
      ]
    },
    {
      "title": "新上好课",
      "list": [
        {
          "img": "https://img4.mukewang.com/szimg/5d1eb552082e176e06000338.jpg",
          "title": "Spark进阶 大数据离线与实时项目实战",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img1.mukewang.com/szimg/5cb68a1408ed350506000338.jpg",
          "title": "SpringCloud  Finchley三版本(M2+RELEASE+SR2)微服务实战",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img.mukewang.com/5ce4b17908d9928706000338-240-135.jpg",
          "title": "Python数据预处理（二）- 清洗文本数据",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img4.mukewang.com/szimg/5d1eb552082e176e06000338.jpg",
          "title": "Spark进阶 大数据离线与实时项目实战",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img1.mukewang.com/szimg/5cda946c0826e4c006000338.jpg",
          "title": "Java电商秒杀系统深度优化 从容应对亿级流量挑战",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img3.mukewang.com/szimg/5ce7e7970894f48706000338.jpg",
          "title": "Google老师亲授 TensorFlow2.0 入门到进阶",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img1.mukewang.com/szimg/5d1ad17f08cd16e800000000.jpg",
          "title": "Zookeeper源码分析",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img3.mukewang.com/5d0771a608ce48cb02000114-240-135.jpg",
          "title": "极速入门SpringCloud之API网关与服务发现",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img2.mukewang.com/szimg/5d1978e80875170506000338.jpg",
          "title": "强力Django + 杀手级xadmin开发在线教育网站",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img2.mukewang.com/5ccff7c80881f47206000338-240-135.jpg",
          "title": "慕课音乐（四）",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        },
        {
          "img": "https://img1.mukewang.com/szimg/5d08d0b308c9749706000338.jpg",
          "title": "阿里新零售数据库设计与实战 ",
          "grade": "高级",
          "num": "240",
          "money": "399.0"
        }
      ]
    }
  ];

}
