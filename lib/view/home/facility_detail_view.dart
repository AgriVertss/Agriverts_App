import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/facilityCubit/facilitydetail_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_chart/pie_chart.dart';

class FacilityDetail extends StatelessWidget {
  final String facilityName;
  FacilityDetail({Key? key, required this.facilityName}) : super(key: key);
  late Size screenSize;
  Map<String, double> hasatData = {
    "Geçen Zaman": 7,
    "Kalan Zaman": 3,
  };

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => FacilityDetailCubit()..getFacilityDetails(),
      child: BlocBuilder<FacilityDetailCubit, FacilityDetailState>(
        builder: (context, state) {
          if (state is FacilityDetailInitial ||
              state is FacilityDetailLoading) {
            return CustomLoadingIndicator();
          }
          state as FacilityDetailLoaded;
          updateHasatData(state.facilityDetails.hasat,state.facilityDetails.hasatLeft);
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
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
                          buildLineChart(
                              data: state.facilityDetails.sicaklik,
                              title: 'Sıcaklık',
                              prefix: '°C',
                              labelPrecision: 1),
                          buildLineChart(
                              data: state.facilityDetails.nem,
                              title: 'Nem',
                              prefix: '%',
                              labelPrecision: 2),
                          buildLineChart(
                              data: state.facilityDetails.ph,
                              title: 'pH',
                              labelPrecision: 2),
                          buildLineChart(
                              data: state.facilityDetails.co2,
                              title: 'CO2 Miktarı',
                              prefix: 'ppm'),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    width: screenSize.width,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          context.router.push(LiveCameraView());
                        },
                        child: Container(
                          width: screenSize.width * 0.6,
                          height: 50,
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Canlı Görüntüyü Başlat',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void updateHasatData(double data1, double data2){
    hasatData.update('Geçen Zaman',(_)=>data1);
    hasatData.update('Kalan Zaman',(_)=>data2);
  }

  Padding buildLineChart(
      {required String title,
      String prefix = ' ',
      required List<double> data,
      int labelPrecision = 3}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          Sparkline(
            data: data,
            gridLinelabelPrefix: prefix,
            gridLineLabelPrecision: labelPrecision,
            enableGridLines: true,
            useCubicSmoothing: true,
          ),
        ],
      ),
    );
  }
}
