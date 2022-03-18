import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomeFBA extends StatelessWidget {
  const HomeFBA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      children: [
        SpeedDialChild(
          child: const Icon(Icons.remove_circle),
          label: 'Kaldır',
          backgroundColor: Colors.red,
          onTap: () {/* Do something */},
        ),
        SpeedDialChild(
          child: const Icon(Icons.add),
          label: 'Yeni Ekle',
          backgroundColor: Colors.green,
          onTap: () {/* Do something */},
        ),
        SpeedDialChild(
          child: const Icon(Icons.question_mark_sharp),
          label: 'SSS',
          backgroundColor: Colors.amberAccent,
          onTap: () {
            context.router.push(
              SSSView(),
            );
          },
        ),
      ],
      activeLabel: Text('More'),
      backgroundColor: Colors.greenAccent,
      icon: Icons.more_vert_rounded,
    );
  }
}
