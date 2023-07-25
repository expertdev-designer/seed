import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils {
  static void showMessage(
      String message,
      {ToastGravity gravity = ToastGravity.BOTTOM,
        Toast length = Toast.LENGTH_SHORT}) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      gravity: gravity,
      toastLength: length,
    );
  }
}