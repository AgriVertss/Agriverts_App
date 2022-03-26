import 'package:agriverts/core/services/homeService/home_service.dart';
import 'package:agriverts/product/models/facility_detail_model.dart';
import 'package:agriverts/product/models/facility_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'facilitydetail_state.dart';

class FacilityDetailCubit extends Cubit<FacilityDetailState> {
  FacilityDetailCubit() : super(FacilityDetailInitial());

  HomeService service = HomeService();

  Future<void> getFacilityDetails() async{
    emit(FacilityDetailLoading());
    var facilityDetails = await service.fetchFacilityDetails(facilityId: '0');
    emit(FacilityDetailLoaded(facilityDetails: facilityDetails));
  }

   Future<bool> deleteFacility() async{
    await service.deleteFacility(facilityToBeDeleted: FacilityModel(facilityName: 'asdas', status: true));
    return true;
  }
}
