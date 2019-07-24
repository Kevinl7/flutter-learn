import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuildDemo();
  }
}


class GridViewBuildDemo extends StatelessWidget {
  Widget _itemsBulder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _itemsBulder,
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0
      ),
    );
  }
}


// GridViewBuild视图
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Ttem $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)
          ),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count( // 网格视图
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100)
    );
  }

  
}
class PageViewDemo extends StatelessWidget {
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