//Import firestore database
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prop2/model/delivery_model.dart';

class Delivery {
  Future<String> getUser(bool enableSelfDelivery, bool partnerDelivery,
      num baseRadius, num baseCharge, num maxRadius, num chargePerKm,int maxOrder) async {
    final user = DeliverySettings(
        enableSelfDelivery: enableSelfDelivery,
        partnerDelivery: partnerDelivery,
        baseRadius: baseRadius,
        baseCharge: baseCharge,
        maxRadius: maxRadius,
        chargePerKm: chargePerKm, maxOrder: maxOrder);
    try {
      final db = FirebaseFirestore.instance;
      String id = DateTime.now().millisecondsSinceEpoch.toString();
      await db.collection('Delivery').doc(id).set(user.toJson());
      return 'Successfully added to firebase';
    } catch (e) {
      return 'There is an error,$e';
    }
  }
}
