import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      autofocus: false,
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
