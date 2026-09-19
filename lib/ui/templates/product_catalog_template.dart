import 'package:flutter/material.dart' hide SearchBar;
import '../atoms/app_text.dart';

class ProductCatalogTemplate extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final List<Widget> productCard;
  final Widget searchBar;
  final Widget productForm;

  const ProductCatalogTemplate({
    super.key,
    required this.appBar,
    required this.productCard,
    required this.searchBar,
    required this.productForm,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchBar,
              const SizedBox(height: 16,),
              AppText(text: "Catalog", definedStyle: DefinedStyle.title),
              const SizedBox(height: 8),
              Column(
                children: productCard.isEmpty ? [SizedBox(height: 1,)] : productCard,
              ),
              const Divider(height: 32, thickness: 1),
              AppText(text: "Add new Product", definedStyle: DefinedStyle.title),
              productForm
            ],
          ),
        ),
    );
  }
}
