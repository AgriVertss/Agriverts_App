import 'package:agriverts/core/services/homeService/home_service.dart';
import 'package:agriverts/product/models/facility_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  HomeService service = HomeService();

  void getHomeData() async {
    emit(HomeLoading());
    var facilities = await service.fetchFacilities();
    emit(HomeLoaded(facilities:facilities));
  }
}
