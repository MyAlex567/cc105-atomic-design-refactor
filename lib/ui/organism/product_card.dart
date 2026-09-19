import 'package:flutter/material.dart';
import '../atoms/product_icon.dart';
import '../atoms/app_text.dart';
import '../atoms/app_button.dart';
import '../atoms/icon_button.dart';
import '../molecules/price.dart';
import '../../models/product.dart';

class AppProductCard extends StatelessWidget { 
  final Product product;
  final ValueChanged<Product> onAddTocart;
  final ValueChanged<Product> onRemove;

  const AppProductCard({
    super.key,
    required this.product,
    required this.onAddTocart,
    required this.onRemove
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: 
            ProductIcon(productIcon: product.icon),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: product.name, definedStyle: DefinedStyle.productName),
                const SizedBox(height: 4),
                AppText(text: product.category, definedStyle: DefinedStyle.category),
                const SizedBox(height: 4),
                PriceLabel(price: product.price),
              ],
            ),
          ),
          Column(
            children: [
              AppButton(
                label: "Add to Cart", 
                customOnPressed: (){
                  onAddTocart(product);
                }
              ),
              const SizedBox(height: 6),
              CustomIconButton(
                customOnPressed: (){
                  onRemove(product);
                }, 
                icon: IconName.remove, 
                iconColor: Colors.red
              )
            ],
          ),
        ],
      ),      

    );
  }
}