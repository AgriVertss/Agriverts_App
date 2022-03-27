import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/facilityCubit/facilitydetail_cubit.dart';
import 'package:agriverts/product/models/facility_detail_model.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/charts/custom_bar_chart.dart';
import 'package:agriverts/product/widgets/charts/custom_pie_chart.dart';
import 'package:agriverts/product/widgets/custom_dialog.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:agriverts/view/home/widgets/camera_button.dart';
import 'package:agriverts/view/home/widgets/custom_line_chart.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FacilityDetail extends StatelessWidget with AutoRouteWrapper {
  final String facilityName;
  FacilityDetail({Key? key, required this.facilityName}) : super(key: key);
  late Size screenSize;
  Map<String, double> hasatData = {
    "Geçen Zaman": 5,
    "Kalan Zaman": 5,
  };
  Map<String, double> healthData = {
    "Health": 5,
    "Disease": 5,
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
        CustomPieChart.updatePieChartData(
            data: hasatData,
            data1: state.facilityDetails.hasat,
            data2: state.facilityDetails.hasatLeft);
        CustomPieChart.updatePieChartData(
            data: healthData,
            data1: state.facilityDetails.health.first,
            data2: state.facilityDetails.health.last);
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
                                  context
                                      .read<FacilityDetailCubit>()
                                      .deleteFacility();
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
                        _buildPieCharts(),
                        SizedBox(
                          height: 20,
                        ),
                        _buildBarChart(),
                        SizedBox(
                          height: 50,
                        ),
                        buildLineCharts(state.facilityDetails),
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

  Column _buildBarChart() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Homogeneous Ratio ',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        CustomBarChart(),
      ],
    );
  }

  Row _buildPieCharts() {
    return Row(
      children: [
        CustomPieChart(
          screenSize: screenSize,
          hasatData: hasatData,
          title: TextConstants.facilityTitle1,
          colorList: [Colors.green, Colors.transparent],
        ),
        CustomPieChart(
          screenSize: screenSize,
          hasatData: healthData,
          title: TextConstants.healtyCard,
          colorList: [Colors.green, Colors.red],
        ),
      ],
    );
  }

  Column buildLineCharts(FacilityDetailModel facilityDetails) {
    return Column(
      children: [
        Text(
          'Ortam Koşulları',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        CustomLineChart(
            data: facilityDetails.sicaklik,
            title: 'Sıcaklık',
            prefix: '°C',
            labelPrecision: 1),
        CustomLineChart(
            data: facilityDetails.nem,
            title: 'Nem',
            prefix: '%',
            labelPrecision: 2),
        CustomLineChart(
          data: facilityDetails.ph,
          title: 'pH',
          labelPrecision: 2,
        ),
        CustomLineChart(
            data: facilityDetails.co2, title: 'CO2 Miktarı', prefix: 'ppm'),
      ],
    );
  }
}
