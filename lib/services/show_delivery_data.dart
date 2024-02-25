import'package:flutter/material.dart';
import 'package:prop2/controller/delivery_controller.dart';
// import 'package:prop2/model/delivery_model.dart';
class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'All Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(future: Delivery().getAllUser(),
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.done){
            if(snapshot.hasData){
              // DeliverySettings userData=snapshot.data as DeliverySettings;
               return ListView.builder(
                   shrinkWrap: true,
                   itemCount: snapshot.data!.length,
                   itemBuilder: (e,index){
                     return Column(
                       children: [
                         ListTile(
                           subtitle: Column(
                             children: [
                               Text("Max Orders:${snapshot.data![index].maxOrder}"),
                               Text("Base Charge:${snapshot.data![index].baseCharge}"),
                               Text("Base Radius ${snapshot.data![index].baseRadius}"),
                             ],
                           ),
                           title: const Text('Delivery item'),
                           leading: const Icon(Icons.person),
                           iconColor: Colors.white,
                           tileColor: Colors.blueAccent,
                           textColor: Colors.white,
                         )
                       ],
                     );
                   },
                );
            }
            else if(snapshot.hasError){
              return Center(child: Text(snapshot.error.toString()),);
            }
            else{
              return const Center(child: Text("Something went wrong"),);
            }
          }
          else{
            return const Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}
