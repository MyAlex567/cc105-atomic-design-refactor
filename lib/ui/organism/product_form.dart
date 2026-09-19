import 'package:flutter/material.dart';
import '../molecules/text_form_field.dart';
import '../molecules/app_drop_down.dart';
import '../../models/product.dart';
import '../molecules/app_submit_btn.dart';
import '../molecules/app_notification.dart';

class ProductForm extends StatefulWidget {
  final ValueChanged<Product> onSubmit;

  const ProductForm({
    super.key,
    required this.onSubmit
  });

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();  
  String _selectedCategory = 'Electronics';
  int _nextId = 8;

  @override
  void dispose(){
    _nameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();    
  }  

  Product? _validate(){
    if (_formKey.currentState!.validate()) {
      final newProduct = Product(
        id: _nextId,
        name: _nameController.text,
        price: double.parse(_priceController.text),
        category: _selectedCategory,
        icon: Icons.inventory_2,
      );   

      return newProduct; 
    }

    return null;
  } 

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            controller: _nameController, 
            label: "Product Name",
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Product name is required';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          CustomTextFormField(
            controller: _priceController, 
            inputType: TextInputType.number,
            label: "Price",
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Price is required';
              }
              final parsed = double.tryParse(value);
              if (parsed == null) {
                return 'Price must be a number';
              }
              if (parsed <= 0) {
                return 'Price must be greater than zero';
              }
              return null;
            },
          ),
          const SizedBox(height: 12,),
          AppDropdownbtnfieldstr(
            label: "Category", 
            category: ['Electronics', 'Home', 'Office', 'Accessories'], 
            defaultValue: _selectedCategory, 
            onChanged: (value){
              setState(() {
                _selectedCategory = value ?? 'Electronics';
              });
            }
          ),
          CustomTextFormField(
            controller: _descriptionController, 
            label: 'Description',
            maxLines: 3,
          ),
          const SizedBox(height: 16),
          AppSubmitButton(
            onPressed: (){
              final setProduct = _validate();
              if(setProduct != null){
                widget.onSubmit(setProduct);
                _nextId = _nextId + 1;
                _nameController.clear();
                _priceController.clear();
                _descriptionController.clear();
                _selectedCategory = 'Electronics';
              }else{
                AppNotification.showNotification(context, 'Please check the form and try again.');
              }
            }, 
            label: "Submit Product"
          )
        ],
      )
    );
  }
} 