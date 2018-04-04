import 'package:flutter/material.dart';
import 'package:pixelyear_mobile/wall_block.dart';

class Wall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new WallState();
  }
}

class WallState extends State<Wall> {
  dayPressed(int dayIndex) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return new Container(
          child: new Padding(
            padding: const EdgeInsets.all(32.0),
            child: new Text(
              'Day: ' + dayIndex.toString(),
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 24.0
              )
            )
          )
        );
      }
    );
  }

  List<WallBlock> buildButtons(BuildContext context) {
    List<WallBlock> days = new List<WallBlock>();

    DateTime date = new DateTime(2016, 3, 0);
    int totalDays = date.day == 29 ? 366 : 355;

    for (int i = 0; i < totalDays; i++) {
      days.add(new WallBlock(onPressed: (){ this.dayPressed(i); } ));
    }

    return days;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.white30,
        child: new GridView.count(
          crossAxisCount: 6,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: this.buildButtons(context),
        ));
  }
}
