import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      initialValue: '',
      textCapitalization: TextCapitalization.none,
      autofocus: false,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if (value == null) {
          return "este campo es requerido";
        }
        return value.length < 10 ? "minimo 10 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          icon: Icon(icon),
          suffixIcon: Icon(suffixIcon)
          //prefixIcon: Icon(Icons.abc),
          ),
    );
  }
}
