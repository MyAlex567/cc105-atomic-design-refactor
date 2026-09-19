import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class AppDropdownbtnfieldstr extends StatelessWidget {
  final String label;
  final String defaultValue;
  final List<String> category;
  final ValueChanged<String?> onChanged;

  const AppDropdownbtnfieldstr({
    super.key,
    required this.label,
    required this.category,
    required this.defaultValue,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        initialValue: defaultValue,
        decoration: InputDecoration(labelText: label),
        items: category.map((cat) => DropdownMenuItem(value: cat, child: AppText(text: cat, definedStyle: DefinedStyle.productName,))).toList(),
        onChanged: onChanged,
    );
  }
}