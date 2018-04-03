import 'package:flutter/material.dart';

class UserBox extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new UserBoxState();
  }

}

class UserBoxState extends State<UserBox> {

  @override
  Widget build(BuildContext context) {
    return new Text('Login', textScaleFactor: 2.0,);
  }
}