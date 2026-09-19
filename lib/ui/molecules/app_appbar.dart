import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final Color? bgColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.bgColor
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppText(text: title, definedStyle: DefinedStyle.title, color: Colors.white,),
      backgroundColor: bgColor ?? Colors.indigo,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);  
}