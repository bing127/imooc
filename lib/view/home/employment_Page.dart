import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EmploymentPage extends StatefulWidget {
  @override
  _EmploymentPageState createState() => _EmploymentPageState();
}

class _EmploymentPageState extends State<EmploymentPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(30.0)),
          child: Row(
            children: <Widget>[
              Text(
                "就业班",
                style: TextStyle(
                  color: Color(0xFF414246),
                  fontSize: ScreenUtil().setSp(40.0),
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(30.0),
              ),
              Text(
                "6个月，从零起步成为工程师",
                style: TextStyle(
                    color: Color(0xFF7B7B7D)
                ),
              )
            ],
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(450),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: ScreenUtil().setHeight(300.0),
                      child: _des_item("https://class.imooc.com/static/module/index/img/java-new.png","JAVA攻城狮","综合就业排名第一"),
                      width: ScreenUtil().setWidth(750/2),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(750/2),
                      height: ScreenUtil().setHeight(150.0),
                      child: _des_item("https://class.imooc.com/static/module/index/img/php-new.png","PHP攻城狮","最广泛的后端语言")
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: ScreenUtil().setHeight(150.0),
                      child: _des_item("https://class.imooc.com/static/module/index/img/fe-new.png","前端攻城狮","小白也可以学好"),
                      width: ScreenUtil().setWidth(750/2),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(150.0),
                      child: _des_item("https://class.imooc.com/static/module/index/img/android-new.png","Android攻城狮","移动市场份额第一"),
                      width: ScreenUtil().setWidth(750/2),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(150.0),
                      child: _des_item("https://class.imooc.com/static/module/index/img/python-new.png","Python攻城狮","迅速崛起的编程语言"),
                      width: ScreenUtil().setWidth(750/2),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }


  Widget _des_item(img,title,sub){
    return Stack(
      children: <Widget>[
        Container(
          child: Image.network(
            "$img",
            fit: BoxFit.fitWidth,
          ),
          alignment: Alignment.bottomRight,
        ),
        Positioned(
          left: ScreenUtil().setWidth(15.0),
          top: ScreenUtil().setWidth(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "$title",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(40.0),
                      color: Color(0xFF414246)
                  ),
                ),
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.0)),
              ),
              Container(
                child: Text(
                  "$sub",
                  style: TextStyle(
                      color: Color(0xFF838383)
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}
