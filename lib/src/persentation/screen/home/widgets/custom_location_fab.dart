import 'package:flutter/material.dart';

class CustomFloatingActionButtonLocation
    implements FloatingActionButtonLocation {
  static const double fabIconHeight = 50.0;

  const CustomFloatingActionButtonLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(
        scaffoldGeometry.scaffoldSize.width - 100,
        scaffoldGeometry.scaffoldSize.height -
            (30.0 / 2) -
            fabIconHeight -
            (fabIconHeight / 2));
  }
}
