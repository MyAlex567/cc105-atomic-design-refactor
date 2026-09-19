import 'package:flutter/material.dart' hide SearchBar;
import '../atoms/app_text.dart';

class SearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SearchBar({
    super.key,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(text: 'Search Products', definedStyle: DefinedStyle.title),
        const SizedBox(height: 8),
        TextField(
          onChanged: onChanged,
          decoration: const InputDecoration(
            hintText: 'Type a product name...',
          ),
        ),       
      ],
    );
  }
}