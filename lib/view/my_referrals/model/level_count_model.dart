import 'package:flutter/material.dart';
import 'package:joy_box_app/res/color.dart';

class LevelCount {
  final String levelName;
  final int count;
  final Color color;
  final double width;

  LevelCount({
    required this.levelName,
    required this.count,
    required this.color,
    required this.width,
  });
}

final List<LevelCount> listcount = [
  LevelCount(
    levelName: 'Level 1',
    count: 4,
    color: AppColor.red1,
    width: 50,
  ),
  LevelCount(
    levelName: 'Level 2',
    count: 5,
    color: AppColor.amber,
    width: 70,
  ),
  LevelCount(
    levelName: 'Level 3',
    count: 3,
    color: AppColor.red1,
    width: 40,
  ),
  LevelCount(
    levelName: 'Level 4',
    count: 5,
    color: AppColor.amber,
    width: 75,
  ),
];
