import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/style_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:agriverts/product/cubits/homeCubit/home_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/custom_dialog.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:agriverts/product/widgets/facility_overview.dart';
import 'package:agriverts/product/widgets/home_fba.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget with AutoRouteWrapper {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeInitial || state is HomeLoading) {
          return CustomLoadingIndicator();
        }
        state as HomeLoaded;
        return SafeArea(
          child: Scaffold(
            floatingActionButton: HomeFBA(),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstants.homeWelcome + ' ${state.userName}',
                        style: MyTextStyles.homeTitle,
                      ),
                      IconButton(
                        onPressed: () {
                          CustomDialog(
                            title: 'Are you sure you want to leave',
                            onpressedAction: () {
                              context.read<AuthCubit>().signOut();
                              context.router.replace(AuthView());
                            },
                          ).show(context);
                        },
                        icon: Icon(
                          Icons.logout_outlined,
                          color: MyColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      TextConstants.homeTitle,
                      style: MyTextStyles.homeSubTitle,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.facilities.length,
                    itemBuilder: (context, index) {
                      return FacilityOverview(
                        data: state.facilities[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
