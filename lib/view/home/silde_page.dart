import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SildePage extends StatefulWidget {
  @override
  _SildePageState createState() => _SildePageState();
}

class _SildePageState extends State<SildePage> {
  var sildeList = [
    "https://img.mukewang.com/5ce253030001ec0716000540.jpg",
    "https://img.mukewang.com/5d23f3fd0001a44d18720632.jpg",
    "https://img.mukewang.com/5d28472e0001f8fb18720632.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Container(
        height: ScreenUtil().setHeight(230.0),
        child: Swiper(
          loop: true,
          autoplayDelay:5000,
          autoplay:true,
          itemBuilder: (BuildContext context,int index){
            return getItemWidget(sildeList[index]);
          },
          itemCount: sildeList.length,
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              color: Color(0xFFF0F0F0),
              activeColor: Color(0xFFFFFFFF),
              size: ScreenUtil().setWidth(15.0),
              activeSize: ScreenUtil().setWidth(18.0)
            )
          ),
        ),
    );
  }


  Widget getItemWidget(url) {
    return ClipRRect(
      child: Image(
          image: new NetworkImage(url),
          fit: BoxFit.fill
      ),
      borderRadius: BorderRadius.circular(ScreenUtil().setWidth(15.0)),
    );
  }
}
