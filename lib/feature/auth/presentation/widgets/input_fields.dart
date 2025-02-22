import 'package:bookia_task/core/colors.dart';
import 'package:bookia_task/core/text_styles.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextInputType keyboardType; // New parameter

  const InputField({
    super.key,
    required this.hint,
    this.isPassword = false,
    this.keyboardType = TextInputType.text, // Default to normal text input
  });

  @override
  InputFieldState createState() => InputFieldState();
}

class InputFieldState extends State<InputField> {
  bool _isObscure = true;

  void _toggleVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType, // Now dynamic
      obscureText: widget.isPassword ? _isObscure : false,
      decoration: InputDecoration(
        hintText: widget.hint,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: _toggleVisibility,
                icon:
                    Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
              )
            : null,
        hintStyle: AppTextStyles.hint,
        filled: true,
        fillColor: AppColors.inputBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      ),
    );
  }
}
