import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class AppNotification {
  static void showNotification(BuildContext context, String message, [Color? bgColor]) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: AppText(text: message, definedStyle: DefinedStyle.category, color: Colors.white,),
        backgroundColor: bgColor,
      ),
    );
  }
}