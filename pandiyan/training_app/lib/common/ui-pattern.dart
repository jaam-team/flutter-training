import 'package:flutter/material.dart';

class UIPattern {
  static BorderRadius heroTopBorderRadius() {
    return BorderRadius.only(
      topRight: Radius.circular(0),
      topLeft: Radius.circular(0),
      bottomRight: Radius.circular(35),
      bottomLeft: Radius.circular(35),
    );
  }

  static BorderRadius bookingBorderRadius() {
    return BorderRadius.only(
      topRight: Radius.circular(35),
      topLeft: Radius.circular(35),
      bottomRight: Radius.circular(0),
      bottomLeft: Radius.circular(0),
    );
  }
}
