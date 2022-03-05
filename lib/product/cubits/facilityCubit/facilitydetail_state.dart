part of 'facilitydetail_cubit.dart';

@immutable
abstract class FacilityDetailState {}

class FacilityDetailInitial extends FacilityDetailState {}
class FacilityDetailLoading extends FacilityDetailState {}
class FacilityDetailLoaded extends FacilityDetailState {
  final FacilityDetailModel facilityDetails;

  FacilityDetailLoaded({required this.facilityDetails});
}
