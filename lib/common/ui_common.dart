import 'package:flutter/material.dart';

// slider
class CheckboxExample extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final String head;
  final String content;
  const CheckboxExample(
      {super.key,
      required this.isChecked,
      required this.onChanged,
      required this.head,
      required this.content});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.selected,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.white;
    }

    return Row(
      children: [
        Expanded(
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
            ],
          ),
        ),
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: widget.isChecked,
          onChanged: widget.onChanged,
        )
      ],
    );
  }
}

//switch

class SwitchExample extends StatefulWidget {
  final bool light;
  final ValueChanged<bool?> onChanged;
  final String head;
  final String content;
  const SwitchExample(
      {super.key,
      required this.light,
      required this.onChanged,
      required this.head,
      required this.content});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
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
            ],
          ),
        ),
        Switch(
          // This bool value toggles the switch.
          value: widget.light,
          activeColor: Colors.green,
          onChanged: widget.onChanged,
        )
      ],
    );
  }
}
