import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imooc/util/image_utils.dart';

class ColumnPage extends StatefulWidget {
  final item;
  ColumnPage({Key key, @required this.item}) : super(key: key);

  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Text(
              "${widget.item['title']}",
            style: TextStyle(
                color: Color(0xFF414246),
                fontSize: ScreenUtil().setSp(40.0),
                fontWeight: FontWeight.bold
            ),
          ),
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(20.0),top: ScreenUtil().setHeight(20.0)),
        ),
        Column(
          children: widget.item["list"].map<Widget>((item){
            return _items(item["img"],item["title"],item["grade"],item["num"],item["money"]);
          }).toList()
        )
      ],
    );
  }

  Widget _items(img,title,grade,num,money){
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            child: Image.network(
              "$img",
              width: ScreenUtil().setWidth(300.0),
              height: ScreenUtil().setWidth(200.0),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20.0)),
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "$title",
                        softWrap:true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(20.0),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "$grade",
                          style: TextStyle(
                              color: Color(0xFF93999F)
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(50.0),
                        ),
                        Text(
                          "$num",
                          style: TextStyle(
                              color: Color(0xFF93999F)
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(20.0),),
                    Text("￥$money",
                      style: TextStyle(
                          color: Color(0xFF93999F)
                      ),),
                  ],
                ),
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(20.0)),
              )
          )
        ],
      ),
      margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(20.0)),
    );
  }
}
