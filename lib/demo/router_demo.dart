import 'package:flutter/material.dart';

class NavgationDemo  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child: Text('Admin'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}