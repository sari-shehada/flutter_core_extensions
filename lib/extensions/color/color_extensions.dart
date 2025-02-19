import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  //Replacement for Old "withOpacity" from the flutter material library which is depricated
  Color withOpacityNew(double value) {
    assert(value >= 0.0 && value <= 1);
    return withValues(alpha: value);
  }
}
