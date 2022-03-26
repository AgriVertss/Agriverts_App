import 'dart:developer';

import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/facilityCubit/facilitydetail_cubit.dart';
import 'package:agriverts/product/cubits/homeCubit/home_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/custom_dialog.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:agriverts/view/home/widgets/camera_button.dart';
import 'package:agriverts/view/home/widgets/custom_line_chart.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_chart/pie_chart.dart';

class FacilityDetail extends StatelessWidget with AutoRouteWrapper {
  final String facilityName;
  FacilityDetail({Key? key, required this.facilityName}) : super(key: key);
  late Size screenSize;
  Map<String, double> hasatData = {
    "Geçen Zaman": 7,
    "Kalan Zaman": 3,
  };

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => FacilityDetailCubit()..getFacilityDetails(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return BlocBuilder<FacilityDetailCubit, FacilityDetailState>(
      builder: (context, state) {
        if (state is FacilityDetailInitial || state is FacilityDetailLoading) {
          return CustomLoadingIndicator();
        }
        state as FacilityDetailLoaded;
        updateHasatData(
            state.facilityDetails.hasat, state.facilityDetails.hasatLeft);
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              actions: [
                PopupMenuButton(
                    tooltip: 'Options',
                    child: Icon(Icons.more_vert_outlined),
                    offset: Offset(0, 40),
                    itemBuilder: (context) {
                      return <PopupMenuEntry<dynamic>>[
                        PopupMenuItem(
                          onTap: () {
                            WidgetsBinding.instance?.addPostFrameCallback((_) {
                              CustomDialog(
                                title: 'Are you sure you want to delete',
                                onpressedAction: () {
                                  context.read<FacilityDetailCubit>().deleteFacility();
                                  context.router.replace(HomeView());
                                },
                              ).show(context);
                            });
                          },
                          child: Text('Bu Tesisi Sil'),
                        ),
                      ];
                    }),
              ],
              title: Text(facilityName),
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15, top: 15, bottom: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TextConstants.facilityTitle1,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 200,
                          width: screenSize.width,
                          child: Center(
                            child: PieChart(
                              dataMap: hasatData,
                              chartType: ChartType.ring,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          'Ortam Koşulları',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buildLineCharts(state),
                      ],
                    ),
                  ),
                ),
                CameraButton(screenSize: screenSize),
              ],
            ),
          ),
        );
      },
    );
  }

  Column buildLineCharts(FacilityDetailLoaded state) {
    return Column(
      children: [
        CustomLineChart(
            data: state.facilityDetails.sicaklik,
            title: 'Sıcaklık',
            prefix: '°C',
            labelPrecision: 1),
        CustomLineChart(
            data: state.facilityDetails.nem,
            title: 'Nem',
            prefix: '%',
            labelPrecision: 2),
        CustomLineChart(
          data: state.facilityDetails.ph,
          title: 'pH',
          labelPrecision: 2,
        ),
        CustomLineChart(
            data: state.facilityDetails.co2,
            title: 'CO2 Miktarı',
            prefix: 'ppm'),
      ],
    );
  }

  void updateHasatData(double data1, double data2) {
    hasatData.update('Geçen Zaman', (_) => data1);
    hasatData.update('Kalan Zaman', (_) => data2);
  }
}
