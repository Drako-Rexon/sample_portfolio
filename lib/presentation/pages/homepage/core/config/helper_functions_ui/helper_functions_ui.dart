import 'package:flutter/material.dart';

extension CustomPadding on int {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}
