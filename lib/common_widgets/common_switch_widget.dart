import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class CommonSwitch extends StatelessWidget {
  const CommonSwitch({
    Key? key,
    required ValueNotifier<bool> controller,
  }) : _controller = controller, super(key: key);

  final ValueNotifier<bool> _controller;

  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
      controller: _controller,
      activeColor: Colors.amberAccent,
      inactiveColor: Colors.grey,
      // activeChild: Text('ON'),
      // inactiveChild: Text('OFF'),
      //activeImage: AssetImage('assets/images/on.png'),
      //inactiveImage: AssetImage('assets/images/off.png'),
      borderRadius: BorderRadius.all(const Radius.circular(5)),
      width: 50.0,
      height: 30.0,
      enabled: true,
      //disabledOpacity: 0.5,
    );
  }
}
