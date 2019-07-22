import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 18);

  final String _title = '高权绯闻而';
  final String _author = '高权';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // return Text(
    //   '《$_title》----$_author 啥叫的咖啡馆国际法功能方面的矛盾开发,s的打开菜单的打开手机大坏蛋大坏蛋v',
    //   textAlign: TextAlign.left,
    //   style: _textStyle,
    //   maxLines: 2,
    //   overflow: TextOverflow.ellipsis,
    // );

    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.deepPurple,),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16.0),
            color: Color.fromRGBO(3, 54, 255, 1.0),
            width: 90.0,
            height: 90.0,
          )
        ],
      ),
    );
  }
}