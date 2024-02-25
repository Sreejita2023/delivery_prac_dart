import 'package:flutter/material.dart';
class UIHelper{

  Future<void>dialogBuilder(BuildContext context, {required String title, required String message}){
    return showDialog<void>(context: context, builder:(BuildContext context){
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      );
    });
  }
}