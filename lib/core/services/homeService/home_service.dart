import 'package:agriverts/product/models/facility_detail_model.dart';
import 'package:agriverts/product/models/facility_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService {
  Future<List<FacilityModel>> fetchFacilities() async {
    List<FacilityModel> facilities = [];
    var data = await FirebaseFirestore.instance.collection('facilities').get();
    for (var element in data.docs) {
      var name = element['userId'];
      var status = element['status'];
      var model = FacilityModel(facilityName: name, status: status);
      facilities.add(model);
    }
    return facilities;
  }

  Future<FacilityDetailModel> fetchFacilityDetails({required String facilityId}) async {
   late FacilityDetailModel  dataToBeReturned;
    var data =
        await FirebaseFirestore.instance.collection('facilityDetail').get();
    for (var element in data.docs) {
      var model = FacilityDetailModel(
        co2: parseString(element['co2']),
        nem: parseString(element['nem']),
        ph: parseString(element['ph']),
        sicaklik: parseString(element['sıcaklık']),
        hasat: double.parse(element['hasat']),
        hasatLeft: double.parse(element['hasatLeft']),
      );
      dataToBeReturned = model;
    }
    return dataToBeReturned;
  }

  List<double> parseString(List<dynamic> data){
    List<double> newData =[];
    for(var index in data){
      newData.add(double.parse(index));
    }
    return newData;
  }
}
