import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  Widget paddingAll(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget paddingHorizontal(double horizontalPadding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: this,
    );
  }

  Widget paddingVertical(double verticalPadding) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: this,
    );
  }

  Widget paddingLeft(double leftPadding) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: this,
    );
  }

  Widget paddingRight(double rightPadding) {
    return Padding(
      padding: EdgeInsets.only(right: rightPadding),
      child: this,
    );
  }

  Widget paddingTop(double topPadding) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: this,
    );
  }

  Widget paddingBottom(double bottomPadding) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: this,
    );
  }
}
