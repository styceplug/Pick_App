import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final bool obscureText;
  final List<String>? autofillHints;
  final bool enabled;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final Color? textColor;
  final int? maxLines;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  // New customizable properties
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  const CustomTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.suffixIcon,
    this.textColor,
    this.keyboardType = TextInputType.text,
    this.maxLines,
    this.onChanged,
    this.autofillHints,
    this.validator,
    this.backgroundColor, // Add to constructor
    this.borderRadius,    // Add to constructor
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Use theme-based colors
    final Color effectiveTextColor = textColor ?? Colors.white;

    // Logic: Use the passed backgroundColor if it exists.
    // If not, fall back to theme or default logic.
    final Color effectiveFillColor = backgroundColor ??
        theme.inputDecorationTheme.fillColor ??
        (isDark ? Colors.white10 : const Color(0xFFDBD0C8).withOpacity(0.1));

    final Color borderColor = theme.dividerColor;
    final Color focusColor = theme.colorScheme.primary.withOpacity(0.6);
    final Color enabledBorderColor = theme.colorScheme.secondary;

    // Logic: Use passed borderRadius if exists, otherwise default to Radius30 (or 10)
    // Note: I used Dimensions.radius30 in the previous logic, but your snippet had radius10.
    // I will use the variable here so it applies to all border states.
    final BorderRadius effectiveRadius = borderRadius ?? BorderRadius.circular(Dimensions.radius10);

    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      enabled: enabled,
      maxLines: maxLines,
      autofillHints: autofillHints,
      keyboardType: keyboardType,
      style: TextStyle(color: effectiveTextColor, fontFamily: 'Poppins'),
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: effectiveFillColor, // Applied here
        labelText: labelText,
        labelStyle: hintStyle ??
            TextStyle(
              color: effectiveTextColor.withOpacity(0.5),
              fontFamily: 'Poppins',
            ),
        hintStyle: hintStyle ??
            TextStyle(
              color: effectiveTextColor.withOpacity(0.5),
              fontFamily: 'Poppins',
            ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        // Apply the effectiveRadius to all border states
        border: OutlineInputBorder(
          borderRadius: effectiveRadius,
          // borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: effectiveRadius,
          // borderSide: BorderSide(color: enabledBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: effectiveRadius,
          // borderSide: BorderSide(color: focusColor),
        ),
      ),
    );
  }
}