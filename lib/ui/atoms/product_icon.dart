/* 
  Para sa Icon ng mga product
*/
import 'package:flutter/material.dart';

class ProductIcon extends StatelessWidget {
  final IconData productIcon;
  final double? size;
  final Color? color;

  const ProductIcon({
    super.key,
    required this.productIcon,
    this.size,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      productIcon,
      size: size ?? 32,
      color: color ?? Colors.indigo,
    );
  }
}