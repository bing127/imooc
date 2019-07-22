import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class AdPage extends StatefulWidget {
  @override
  _AdPageState createState() => _AdPageState();
}

class _AdPageState extends State<AdPage> {
  var adList = [
    "专栏上线啦！小程序开发一线战地笔记送达！",
    "注册即送价值68元新人礼卷>"
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(80.0),
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.surround_sound,
            color: Color(0xFFFA9523),
            size: ScreenUtil().setSp(40.0),
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0),right: ScreenUtil().setWidth(15.0)),
                child: Swiper(
                  scrollDirection:Axis.vertical,
                  itemCount: adList.length,
                  autoplayDelay: 3000,
                  autoplay:true,
                  duration:500,
                  loop: true,
                  itemBuilder: (BuildContext context,int index){
                    return Container(
                      child: Text(
                        "${adList[index]}",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xFF535353)
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    );
                  },
                ),
              )
          ),
          Icon(
            Icons.more_horiz,
            color: Color(0xFFB4B5B7),
            size: ScreenUtil().setSp(40.0),
          ),
        ],
      ),
    );
  }
}
