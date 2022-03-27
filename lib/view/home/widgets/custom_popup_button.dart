import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/facilityCubit/facilitydetail_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/custom_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPopUpButton extends StatelessWidget {
  const CustomPopUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      tooltip: TextConstants.opt,
      child: Icon(Icons.more_vert_outlined),
      offset: Offset(0, 40),
      itemBuilder: (context) {
        return <PopupMenuEntry<dynamic>>[
          PopupMenuItem(
            onTap: () {
              WidgetsBinding.instance?.addPostFrameCallback(
                (_) {
                  CustomDialog(
                    title: 'Are you sure you want to delete',
                    onpressedAction: () {
                      context
                          .read<FacilityDetailCubit>()
                          .deleteFacility();
                      context.router.replace(HomeView());
                    },
                  ).show(context);
                },
              );
            },
            child: Text(TextConstants.del),
          ),
        ];
      },
    );
  }
}