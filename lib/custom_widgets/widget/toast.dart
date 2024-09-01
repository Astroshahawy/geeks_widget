import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastPosition {
  top,
  bottom,
}
enum ToastTime {
  long,
  short
}

class GeeksToast {
  const GeeksToast._();
  factory GeeksToast.show(
    String message, {
    Color? backgroundColor,
    Color? textColor,
    double? fontSize,
    ToastTime? toastLength = ToastTime.long,
    ToastPosition? position = ToastPosition.bottom,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength == ToastTime.long
          ? Toast.LENGTH_LONG
          : Toast.LENGTH_SHORT,
      gravity: position == ToastPosition.top
          ? ToastGravity.TOP
          : ToastGravity.BOTTOM,
      // timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize ?? 16.0,
    );
    return const GeeksToast._();
  }
}
