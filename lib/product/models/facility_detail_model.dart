class FacilityDetailModel {
  final double hasat;
  final double hasatLeft;
  final List<double> sicaklik;
  final List<double> nem;
  final List<double> ph;
  final List<double> co2;
  final List<double> health;

  FacilityDetailModel({
    required this.health,
    required this.hasat,
    required this.sicaklik,
    required this.nem,
    required this.ph,
    required this.co2,
    required this.hasatLeft,
  });
}
