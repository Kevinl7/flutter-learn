import 'package:flutter/material.dart';
import '../model/post.dart';

class  SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
           padding: EdgeInsets.all(8.0),
           sliver: SliverGridDemo(),
         )
        ]
      )
    );
         
  }
}

class  SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 1.0
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover
                  ),
                  
                );
              },
              childCount: posts.length,
            ),
          );
  
  }
}