
class FacilityModel {
  late String facilityName;
  late bool status;

  FacilityModel({required this.facilityName,required this.status});

  FacilityModel.fromJson(Map<String, dynamic> json) {
    facilityName = json['facilityName'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['facilityName'] = facilityName;
    data['status'] = status;
    return data;
  }
}