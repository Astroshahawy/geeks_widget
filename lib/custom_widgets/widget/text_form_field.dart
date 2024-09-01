
import 'package:flutter/material.dart';
class GeeksTextField extends StatelessWidget {
  const GeeksTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.validator,
    required this.label,
    this.icon,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.errorText,
    this.onTap,
    this.maxLines,
    this.readOnly = false,
  }) : super(key: key);
  final TextEditingController? controller;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final Icon? icon, suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? errorText;
  final String? label;
  final bool readOnly;
  final int? maxLines;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType ?? TextInputType.name,
      textInputAction: textInputAction ?? TextInputAction.next,
      validator: validator,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: label,
        prefixIcon: icon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
