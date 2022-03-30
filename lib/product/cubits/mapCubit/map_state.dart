part of 'map_cubit.dart';

@immutable
abstract class MapState {}

class MapInitial extends MapState {}
class MapLoading extends MapState {}
class MapSucces extends MapState {
  final Set<Marker> markers;

  MapSucces({required this.markers});
}
