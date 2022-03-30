import 'package:agriverts/core/services/mapService/map_service.dart';
import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(MapInitial());

  MapService service = MapService();

  void loadMarkers() async {
    emit(MapLoading());
    try {
      var markers = await service.getMarkers();
      emit(MapSucces(markers: markers));
    } catch (e) {
      print(e);
    }
  }
}
