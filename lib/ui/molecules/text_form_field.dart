import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? inputType;
  final TextEditingController controller;
  final String label;
  final int? maxLines;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.inputType,
    required this.controller,
    required this.label,
    this.maxLines,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label,),
      maxLines: maxLines,
      keyboardType: inputType ?? TextInputType.text,
      validator: validator,
    );
  }
}