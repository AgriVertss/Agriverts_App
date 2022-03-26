import 'package:agriverts/core/services/homeService/home_service.dart';
import 'package:agriverts/product/models/facility_model.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  HomeService service = HomeService();

  Future<void> getHomeData() async {
    emit(HomeLoading());
    var facilities = await service.fetchFacilities();
    var userName = FirebaseAuth.instance.currentUser!.displayName;
    emit(
      HomeLoaded(facilities: facilities, userName: userName),
    );
  }

  Future<bool> deleteFacility() async{
    await service.deleteFacility(facilityToBeDeleted: FacilityModel(facilityName: 'asdas', status: true));
    return true;
  }
}
