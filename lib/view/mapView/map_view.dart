import 'dart:async';
import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/product/cubits/mapCubit/map_cubit.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapCubit()..loadMarkers(),
      child: BlocBuilder<MapCubit, MapState>(
        builder: (context, state) {
          if (state is MapLoading) {
            return ScaffoldLoadingIndicator();
          } else if (state is MapSucces) {
            return SafeArea(
              child: GoogleMap(
                initialCameraPosition: AppConstant.initialPosition,
                mapType: MapType.terrain,
                markers: state.markers,
                myLocationEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _onMapCreated(controller);
                },
              ),
            );
          }
          return ScaffoldLoadingIndicator();
        },
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    if (!_controller.isCompleted) {
      setState(() {
        _controller.complete(controller);
      });
    }
  }
}