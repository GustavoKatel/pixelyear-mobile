import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixelyear_mobile/header.dart';
import 'package:pixelyear_mobile/user_box.dart';
import 'package:pixelyear_mobile/wall.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget { 

  MyApp() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  void openDayBox() {

  }
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pixel Year',
      theme: new ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'GochiHand'
      ),
      home: new Scaffold(
        body: new Column(
          children: <Widget>[
            new Center(
              child: new Header(),
            ),
            
            new Center(
              child: new UserBox(),
            ),

            new FlatButton(child: new Icon(Icons.brush), onPressed: this.openDayBox,),

            new Expanded(
              child: new Wall(),
            ),

          ],
        ),
      ),
    );
  }
}