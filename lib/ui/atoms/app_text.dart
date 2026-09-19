/* 
  Ito sir para sa mga text
*/
import 'package:flutter/material.dart';

enum DefinedStyle { productName, category, label, title}

class AppText extends StatelessWidget {
  final String text;
  final DefinedStyle definedStyle;
  final Color? color;
  final FontWeight? bold;
  final double? size;

  const AppText({
    super.key,
    required this.text,
    required this.definedStyle,
    this.color,
    this.bold,
    this.size
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = switch(definedStyle){
      DefinedStyle.productName => TextStyle(fontSize: size ?? 16, fontWeight: bold ?? FontWeight.w600),
      DefinedStyle.category => TextStyle(fontSize: size ?? 13, color: color ?? Color(0xFF757575)),
      DefinedStyle.label => TextStyle(fontSize: size ??  15, fontWeight: bold ?? FontWeight.bold, color: color ?? Colors.indigo),
      DefinedStyle.title => TextStyle(fontSize: size ??  20, fontWeight: bold ?? FontWeight.bold, color: color ?? Colors.black87)
    };

    return Text(text, style: textStyle);
  }
}