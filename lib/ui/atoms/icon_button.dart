/* 
  Ito sir yung icon button pang remove ng item
*/
import 'package:flutter/material.dart';

enum IconName { remove, }

class CustomIconButton extends StatelessWidget {
  final VoidCallback customOnPressed;
  final IconName icon;
  final Color iconColor;
  static const _setIcon = {
    IconName.remove: Icons.delete_outline, 
  };

  const CustomIconButton({
    super.key,
    required this.customOnPressed,
    required this.icon,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: customOnPressed,
      icon: Icon(_setIcon[icon], color: iconColor,),
    );
  }
}