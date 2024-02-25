import 'package:flutter/material.dart';

class ButtonCommon extends StatefulWidget {
  final String content;
  final Color color;
  final Function onPressed;
  const ButtonCommon(
      {super.key,
      required this.content,
      required this.color,
      required this.onPressed});

  @override
  State<ButtonCommon> createState() => _ButtonCommonState();
}

class _ButtonCommonState extends State<ButtonCommon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(widget.color),
      ),

      onPressed: () {
        widget.onPressed();
      },
      child:  Padding(
         padding: const EdgeInsets.only(top: 14.0,bottom: 14.0),
         child: Text(
           widget.content,
           style: const TextStyle(color: Colors.white),
         ),
      )
    );
  }
}
