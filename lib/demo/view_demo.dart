import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
     // pageSnapping: false, //设置滑动不自动跳转页面
      reverse: true, // 反转 最后一页第一展示
      scrollDirection: Axis.vertical, // 垂直翻页 默认水平
      onPageChanged: (currPage) => debugPrint('page: $currPage'), //页面调转的回调
      controller: PageController(
        initialPage: 1,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        )
      ],
    );
  }
}