import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.borderRadius = 16,
    this.controller,
    this.customDecoration,
    this.hintText,
    this.labelText,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.onChanged,
  });

  final TextEditingController? controller;
  final InputDecoration? customDecoration;
  final double borderRadius;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: customDecoration ??
          InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius)),
            hintText: hintText,
            labelText: labelText,
          ),
    );
  }
}
