import 'package:cloud_firestore/cloud_firestore.dart';

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
  factory DeliverySettings.fromJson(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return DeliverySettings(
        enableSelfDelivery: data?['enableSelfDelivery'],
        partnerDelivery: data?['partnerDelivery'],
        baseRadius: data?['baseRadius'],
        baseCharge: data?['baseCharge'],
        maxRadius: data?['maxRadius'],
        chargePerKm: data?['chargePerKm'],
        maxOrder: data?['maxOrder']);
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'enableSelfDelivery': enableSelfDelivery,
      'partnerDelivery': partnerDelivery,
      'baseRadius': baseRadius,
      'baseCharge': baseCharge,
      'maxRadius': maxRadius,
      'chargePerKm': chargePerKm,
      'maxOrder': maxOrder,
    };
  }
}
