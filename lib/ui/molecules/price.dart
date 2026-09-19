/*
  for price labels
*/
import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class PriceLabel extends StatelessWidget {
  final double price;

  const PriceLabel({
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return AppText(text: 'PHP ${(price).toStringAsFixed(2)}', definedStyle: DefinedStyle.label);
  }
}