import 'package:agriverts/core/constants/text_constants.dart';
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
      elevation: 2,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.add),
          label: TextConstants.add,
          backgroundColor: Colors.green,
          onTap: () {
            context.router.push(AddFacilityView());
          },
        ),
        SpeedDialChild(
          child: const Icon(Icons.question_mark_sharp),
          label: 'FAQ',
          backgroundColor: Colors.amberAccent,
          onTap: () {
            context.router.push(
              FAQView(),
            );
          },
        ),
        SpeedDialChild(
          child: const Icon(Icons.map),
          label: TextConstants.map,
          backgroundColor: Colors.blue,
          onTap: () {
            context.router.push(MapView());
          },
        ),
      ],
      activeLabel: Text('More'),
      backgroundColor: Colors.greenAccent,
      icon: Icons.more_vert_rounded,
    );
  }
}
