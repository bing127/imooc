import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imooc/util/image_utils.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  var _gridList = [
    {
      "icon":"pins_component_search_question_default_from",
      "title":"课程"
    },
    {
      "icon":"pins_component_search_question_default_from",
      "title":"实战"
    },
    {
      "icon":"pins_component_search_question_default_from",
      "title":"就业班"
    },
    {
      "icon":"pins_component_search_question_default_from",
      "title":"专栏"
    },
    {
      "icon":"pins_component_search_question_default_from",
      "title":"手记"
    }
  ];


  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    
    
    return Container(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(20.0),bottom: ScreenUtil().setHeight(30.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _gridList.map<Widget>((item){
          return  _gridItem(item['icon'],item['title']);
        }).toList()
      )
    );
  }


  Widget _gridItem(img,title){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            child: loadAssetImage(
              img,
              width: ScreenUtil().setWidth(90.0),
              height: ScreenUtil().setWidth(90.0),
            ),
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20.0)),
          ),
          Container(
            child: Text(
                "$title"
            ),
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(10.0)),
          )
        ],
      )
    );
  }
}
