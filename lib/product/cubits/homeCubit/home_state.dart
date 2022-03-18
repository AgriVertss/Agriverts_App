part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class HomeLoaded extends HomeState {
  final List<FacilityModel> facilities;
  final String? userName;

  HomeLoaded({this.userName, required this.facilities});
}
