import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCheckboxButton extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;
  final Color bordercolor;

  const CustomCheckboxButton({
    Key? key,
    this.initialValue = false,
    this.onChanged, required this.bordercolor,
  }) : super(key: key);

  @override
  _CustomCheckboxButtonState createState() => _CustomCheckboxButtonState();
}

class _CustomCheckboxButtonState extends State<CustomCheckboxButton> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
        widget.onChanged?.call(_value);
      },
      child: Container(
        width: 24, // Adjust width as needed
        height: 24, // Adjust height as needed
        decoration: BoxDecoration(
          // border: Border.all(
            color: _value ? Colors.amberAccent : Colors.white,
          //   color: _value ? Colors.green : Colors.grey,
          // ),
          border: Border.all(
            color: widget.bordercolor,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        // child: _value
        //     ? Icon(
        //         Icons.check,
        //         size: 20,
        //         color: Colors.green,
        //       )
        //     : null,
      ),
    );
  }
}
