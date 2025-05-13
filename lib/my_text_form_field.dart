library my_text_form_field;

import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final void Function(String)? onChanged;
  // Ajout du champ validator
  final String? Function(String?)? validator;
  final String? Function(String?)? onSubmetted;

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? color;
  final double? height;
  final int? maxLines;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction textInputAction;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final double raduis;
  final Color? bgColor;
  final TextAlign textAlign;
  const MyTextFormField({
    super.key,
    this.onChanged,
    this.validator,
    this.onSubmetted,
    this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.color,
    this.height,
    this.maxLines,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType = TextInputType.multiline,
    this.textInputAction = TextInputAction.next,
    this.onTap,
    this.focusNode,
    this.raduis = 20,
    this.bgColor,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: height,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor ?? Colors.grey.withValues(alpha: .2),
          borderRadius: BorderRadius.circular(raduis),
        ),
        child: TextFormField(
          onTap: onTap,
          maxLines: null,
          focusNode: focusNode,
          onChanged: onChanged,
          validator: validator,
          onFieldSubmitted: onSubmetted,
          textAlign: textAlign,
          controller: controller,
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          style: TextStyle(color: color),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: TextStyle(color: color),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            // fillColor: Colors.transparent,
            filled: false,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(color: color),
          ),
        ),
      ),
    );
  }
}
