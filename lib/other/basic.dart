import 'package:flutter/material.dart';
import 'package:imooc/util/toast.dart';
import 'package:imooc/util/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:imooc/public/Colours.dart';
import 'package:imooc/view/home/home_page.dart';
import 'package:imooc/view/category/category_page.dart';
import 'package:imooc/view/study/study_page.dart';
import 'package:imooc/view/my/my_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _tabIndex = 0;
  var _pageList;
  var _tabImages;
  var _appBarTitles = ['首页', '分类', '学习', '我的'];
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() {
    _pageList = [
      HomePage(),
      CategoryPage(),
      StudyPage(),
      MyPage(),
    ];

    _tabImages = [
      [
        Image.asset( Utils.getImgPath("main_component_subtitle_home_normal"),width: 24.0, height: 24.0),
        Image.asset(Utils.getImgPath("main_component_subtitle_home"), width: 24.0, height: 24.0),
      ],
      [
        Image.asset(Utils.getImgPath("main_component_subtitle_discover_normal"),width: 24.0, height: 24.0),
        Image.asset(Utils.getImgPath("main_component_subtitle_discover"),width: 24.0, height: 24.0),
      ],
      [
        Image.asset(Utils.getImgPath("main_component_subtitle_download_normal"),width: 24.0, height: 24.0),
        Image.asset(Utils.getImgPath("main_component_subtitle_download"),width: 24.0, height: 24.0),
      ],
      [
        Image.asset(Utils.getImgPath("main_component_subtitle_mine_normal"),width: 24.0, height: 24.0),
        Image.asset(Utils.getImgPath("main_component_subtitle_mine"),width: 24.0, height: 24.0),
      ]
    ];
  }

  Image _getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return _tabImages[curIndex][1];
    }
    return _tabImages[curIndex][0];
  }

  Widget _buildTabText(int curIndex) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Text(_appBarTitles[curIndex]),
    );
  }

  DateTime _lastTime;

  Future<bool> _isExit() {
    if (_lastTime == null ||
        DateTime.now().difference(_lastTime) > Duration(milliseconds: 2500)) {
      _lastTime = DateTime.now();
      Toast.show("再次点击退出应用");
      return Future.value(false);
    }
    Toast.cancelToast();
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return WillPopScope(
      onWillPop: _isExit,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: _getTabIcon(0),
                  title: _buildTabText(0)
              ),
              BottomNavigationBarItem(
                  icon: _getTabIcon(1),
                  title: _buildTabText(1)
              ),
              BottomNavigationBarItem(
                  icon: _getTabIcon(2),
                  title: _buildTabText(2)
              ),
              BottomNavigationBarItem(
                  icon: _getTabIcon(3),
                  title: _buildTabText(3)
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _tabIndex,
            elevation: 5.0,
            iconSize: 21.0,
            selectedFontSize: ScreenUtil().setSp(20.0),
            unselectedFontSize:ScreenUtil().setSp(20.0),
            selectedItemColor: Color(0xff2B333B),
            unselectedItemColor: Color(0xffD2D2D2),
            onTap: (index) {
              _pageController.jumpToPage(index);
            },
          ),
          body: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: _pageList,
            physics: NeverScrollableScrollPhysics(), // 禁止滑动
          )
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _tabIndex = index;
    });
  }
}
