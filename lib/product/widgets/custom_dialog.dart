import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String actionPopTitle;
  final String actionTitle;
  final VoidCallback onpressedAction;
  const CustomDialog({Key? key, this.title='Are you sure ?', this.actionPopTitle='No', this.actionTitle='Yes',required this.onpressedAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: onpressedAction,
          child: Text(actionTitle),
        ),
        TextButton(
          onPressed: () {
            context.router.pop();
          },
          child: Text(actionPopTitle),
        ),
      ],
    );
  }
}

extension CustomDialogExtension on CustomDialog {
  Future show(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return this;
        });
  }
}
