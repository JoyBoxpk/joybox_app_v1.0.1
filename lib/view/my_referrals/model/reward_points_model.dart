import 'package:flutter/material.dart';

class RewardPointsModel {
  final String imagePath;
  final int points;
  final String title;

  RewardPointsModel({
    required this.imagePath,
    required this.points,
    required this.title,
  });
}

final List<RewardPointsModel> rewardpointslist = [
  RewardPointsModel(
      imagePath: "assets/images/my_referrals_screen_img4.svg",
      points: 10,
      title: "Friends\nReferred"),
  RewardPointsModel(
      imagePath: "assets/images/my_referrals_screen_img3.svg",
      points: 800,
      title: "Points\nPending"),
  RewardPointsModel(
      imagePath: "assets/images/my_referrals_screen_img5.svg",
      points: 200,
      title: "Points\nEarned"),
];
