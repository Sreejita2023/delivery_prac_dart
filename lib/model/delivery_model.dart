class DeliverySettings {
//   prop initialize
  bool enableSelfDelivery;
  bool partnerDelivery;
  int maxOrder;
  num baseRadius;
  num baseCharge;
  num maxRadius;
  num chargePerKm;
  // List<int>selfDeliveryHours;

//    constructor
  DeliverySettings(
      {required this.enableSelfDelivery,
      required this.partnerDelivery,
      required this.baseRadius,
      required this.baseCharge,
      required this.maxRadius,
      required this.chargePerKm,
      required this.maxOrder});

  // fromJson
  // factory DeliverySettings.fromJson(){
  //
  // }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'enableSelfDelivery': enableSelfDelivery,
      'partnerDelivery': partnerDelivery,
      'baseRadius': baseRadius,
      'baseCharge': baseCharge,
      'maxRadius': maxRadius,
      'chargePerKm': chargePerKm,
      'maxOrder':maxOrder,
    };
  }
}
