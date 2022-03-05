import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'facilitydetail_state.dart';

class FacilityDetailCubit extends Cubit<FacilityDetailState> {
  FacilityDetailCubit() : super(FacilityDetailInitial());
}
