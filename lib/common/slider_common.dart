import 'package:flutter/material.dart';


class SliderCommon extends StatefulWidget {
  final String head;
  final String content;
  final double initialValue;
  final int division;
  final double maxvalue;
  final double minvalue = 0;
  final int keyValue;

  // to get value
  final ValueChanged<double> onChanged;
  const SliderCommon(
      {super.key,
      required this.head,
      required this.content,
      required this.initialValue,
      required this.division,
      required this.maxvalue,
      required this.onChanged, required this.keyValue});

  @override
  State<SliderCommon> createState() => _SliderCommonState();
}

class _SliderCommonState extends State<SliderCommon> {
  String getValue(int keyValue){
     switch(keyValue){
       case 1:
         return "${widget.initialValue}";
       case 2:
         return "${widget.initialValue} km";
       case 3:
         return "\u20B9 ${widget.initialValue}";
       case 4:
         return "\u20B9 ${widget.initialValue}/km";
       case 5:
         return'${widget.initialValue.toInt()}';
       default:
         return '';
     }
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      // padding: const EdgeInsets.only(left: 8.0,right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                widget.head,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                widget.content,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0,
                    color: Colors.grey),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 4.0,right: 26.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 6.0,
                    thumbColor: Colors.blue,
                    activeTrackColor: Colors.blue,
                    inactiveTrackColor: const Color.fromRGBO(216, 235, 251, 1.0),
                    overlayColor: Colors.blue.withOpacity(0.2),
                    tickMarkShape: const RoundSliderTickMarkShape(),
                    inactiveTickMarkColor: const Color.fromRGBO(1, 124, 229, 1.0),
                    activeTickMarkColor: Colors.white,
                    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                    valueIndicatorColor: const Color.fromRGBO(1, 124, 229, 1.0),
                  ),
                  child: Slider(
                    value: widget.initialValue,
                    max: widget.maxvalue,
                    divisions: widget.division,
                    onChanged: widget.onChanged,
                  ),
                ),),
                Text(getValue(widget.keyValue))
              ],
            ),
          )
        ],
      ),
    );
  }
}


