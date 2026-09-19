import 'package:flutter/material.dart';
import '../atoms/app_button.dart';

class AppSubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? bgColor;
  final Color? fgColor;


  const AppSubmitButton({  
    super.key,
    required this.onPressed,
    required this.label,
    this.bgColor,
    this.fgColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppButton(
        label: label, 
        customOnPressed: onPressed,
        size: 16,
        fontWeight: FontWeight.bold,
        edgeInsets: EdgeInsets.symmetric(vertical: 14),
        ),
    );
  }
}