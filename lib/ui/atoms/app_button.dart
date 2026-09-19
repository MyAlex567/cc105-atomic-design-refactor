/* 
  Ito sir yung atoms na ginamit ko para sa add to cart
  button
*/
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback customOnPressed;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final Color? bgcolor;
  final Color? fgcolor;
  final EdgeInsets? edgeInsets;

  const AppButton({super.key,
    required this.label,
    required this.customOnPressed,
    this.size,
    this.fontWeight,
    this.color,
    this.bgcolor,
    this.fgcolor,
    this.edgeInsets
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: customOnPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor ?? Colors.indigo,
        foregroundColor: fgcolor ?? Colors.white,
        padding: edgeInsets,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
      ),
    );
  }
}