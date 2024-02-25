import 'package:flutter/material.dart';
import 'package:prop2/common/button_common.dart';
import 'package:prop2/common/ui_common.dart';
import 'package:prop2/common/slider_common.dart';
import 'package:prop2/controller/delivery_controller.dart';
import 'package:prop2/common/alert_box.dart';

class DeliverySetting extends StatefulWidget {
  const DeliverySetting({super.key});

  //

  @override
  State<DeliverySetting> createState() => _DeliverySettingState();
}

class _DeliverySettingState extends State<DeliverySetting> {
  // initializations
  double baseRadius = 1.5;
  double baseCharge = 10;
  double maxRadius = 2;
  double chargePerKm = 20;
  bool partnerDelivery = true;
  bool enableSelfDelivery = false;
  int maxOrder=10;

  Future<void> addData() async {
    try {
      String message = await Delivery().getUser(enableSelfDelivery,
          partnerDelivery, baseRadius, baseCharge, maxRadius, chargePerKm,maxOrder);
      if (!mounted) return; // Checks `this.mounted`, not `context.mounted`.
      UIHelper().dialogBuilder(context, title: "Successful", message: message);
    } catch (e) {
      if (!mounted) return; // Checks `this.mounted`, not `context.mounted`.
      UIHelper().dialogBuilder(context,
          title: "Failure", message: "The data is not added to firebase,$e");
    }
  }
  Future<void> cancelData()async {
     setState(() {
       baseRadius = 1.5;
       baseCharge = 10;
       maxRadius = 2;
       chargePerKm = 20;
       partnerDelivery = true;
       enableSelfDelivery = false;
       maxOrder=10;
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Delivery Setting',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            const SizedBox(height: 10,),
            CheckboxExample(
                isChecked: partnerDelivery,
                onChanged: (bool? value) {
                  setState(() {
                    partnerDelivery = value!;
                  });
                },
                head: "Tiffinshala Partner Delivery",
                content: "Partner delivery is enabled"),
            const SizedBox(height: 10,),
            SliderCommon(
              head: "Change maximum orders per hour",
              content: "",
              initialValue:maxOrder.toDouble(),
              division: 15,
              maxvalue: 15,
              onChanged: (double value) => {
                setState(() {
                  maxOrder = value.toInt();
                })
              },
              keyValue: 5,
            ),
            const SizedBox(height: 10,),
            SwitchExample(
                light: enableSelfDelivery,
                onChanged: (bool? value) {
                  setState(() {
                    enableSelfDelivery = value!;
                  });
                },
                head: "Self Delivery",
                content: "Select this if you want to manage your own delivery"),
            const SizedBox(height: 10,),
            SliderCommon(
              head: "Base Radius",
              content: "Base delivery radius",
              initialValue: baseRadius,
              division: 10,
              maxvalue: 5,
              onChanged: (double value) => {
                setState(() {
                  baseRadius = value;
                })
              },
              keyValue: 2,
            ),
            const SizedBox(height: 10,),
            SliderCommon(
              head: "Base Charges",
              content: "Fixed base delivery charges on every order",
              initialValue: baseCharge,
              division: 20,
              maxvalue: 20,
              onChanged: (double value) => {
                setState(() {
                  baseCharge = value;
                })
              },
              keyValue: 3,
            ),
            const SizedBox(height: 10,),
            SliderCommon(
              head: "Max Radius",
              content: "Maximum radius where your kitchen shall be listed",
              initialValue: maxRadius,
              division: 10,
              maxvalue: 5,
              onChanged: (double value) => {
                setState(() {
                  maxRadius = value;
                })
              },
              keyValue: 2,
            ),
            const SizedBox(height: 10,),
            SliderCommon(
              head: "Charges Per km",
              content: "Charges per km after base radius",
              initialValue: chargePerKm,
              division: 20,
              maxvalue: 100,
              onChanged: (double value) => {
                setState(() {
                  chargePerKm = value;
                })
              },
              keyValue: 4,
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: ButtonCommon(
                      content: "Cancel",
                      color: Colors.red,
                      onPressed: () => {cancelData()}),
                ),
                const SizedBox(width: 4,),
                Expanded(
                  child: ButtonCommon(
                      content: "Update",
                      color: Colors.blueAccent,
                      onPressed: () => {addData()}),
                ),
              ],
            ),
            const SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}
