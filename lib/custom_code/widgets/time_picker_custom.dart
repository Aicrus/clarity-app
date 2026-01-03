// Automatic FlutterFlow imports
// Imports other custom widgets
// Imports custom actions
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TimePickerCustom extends StatefulWidget {
  const TimePickerCustom({
    Key? key,
    this.width,
    this.height,
    required this.colorBlue,
    required this.colorYellow,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color colorBlue;
  final Color colorYellow;

  @override
  _TimePickerCustomState createState() => _TimePickerCustomState();
}

class _TimePickerCustomState extends State<TimePickerCustom> {
  int selectedHour = 0;
  int selectedMinute = 0;
  FixedExtentScrollController? hourController;
  FixedExtentScrollController? minuteController;

  @override
  void initState() {
    super.initState();

    // Get the current time
    DateTime currentTime = DateTime.now();
    selectedHour = currentTime.hour;
    selectedMinute = currentTime.minute;
    hourController = FixedExtentScrollController(initialItem: selectedHour);
    minuteController = FixedExtentScrollController(initialItem: selectedMinute);
  }

  @override
  void dispose() {
    hourController?.dispose();
    minuteController?.dispose();
    super.dispose();
  }

  int adjustedSelectedValue(int value) {
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: widget.width! / 2.2,
            height: widget.height!,
            child: buildPicker(
              controller: hourController!,
              itemCount: 24,
              onSelectedItemChanged: (int index) {
                setState(() {
                  selectedHour = adjustedSelectedValue(index);
                });
              },
              selectedValue: adjustedSelectedValue(selectedHour),
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: widget.width! / 2.2,
            height: widget.height!,
            child: buildPicker(
              itemCount: 60,
              controller: minuteController!,
              onSelectedItemChanged: (int index) {
                setState(() {
                  selectedMinute = adjustedSelectedValue(index);
                });
              },
              selectedValue: adjustedSelectedValue(selectedMinute),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPicker({
    required int itemCount,
    required ValueChanged<int> onSelectedItemChanged,
    required FixedExtentScrollController controller,
    required int selectedValue,
  }) {
    return ListWheelScrollView.useDelegate(
      controller: controller,
      physics: FixedExtentScrollPhysics(),
      itemExtent: 60.0,
      onSelectedItemChanged: onSelectedItemChanged,
      childDelegate: ListWheelChildBuilderDelegate(
        builder: (context, index) {
          return buildItem(context, index, selectedValue);
        },
        childCount: itemCount,
      ),
    );
  }

  Widget buildItem(BuildContext context, int value, int selectedValue) {
    bool isSelected = value == selectedValue;
    Color color = isSelected ? widget.colorYellow : widget.colorBlue;

    if (value == (selectedValue - 1) || value == (selectedValue + 1)) {
      color = widget.colorBlue;
    }

    return SizedBox(
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (value == selectedValue)
            Container(
              color: widget.colorBlue,
              width: 60,
              height: 1,
            ),
          Center(
            child: Text(
              value.toString().padLeft(2, '0'),
              style: TextStyle(
                fontSize: isSelected ? 32 : 32,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ),
          if (value == selectedValue)
            Container(
              color: widget.colorBlue,
              width: 60,
              height: 1,
            ),
        ],
      ),
    );
  }
}
