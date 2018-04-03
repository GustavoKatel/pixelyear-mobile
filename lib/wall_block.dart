import 'package:flutter/material.dart';

class WallBlock extends StatefulWidget {

  WallBlock({this.onPressed});

  final VoidCallback onPressed;

  @override
  State<StatefulWidget> createState() {
    return new WallBlockState();
  }
}

class WallBlockState extends State<WallBlock> {

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: widget.onPressed,
      child: new Container(
        color: Colors.yellow,
      ),
    );
  }
}