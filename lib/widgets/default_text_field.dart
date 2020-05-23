import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String _label;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final FocusNode nextFocus;

  const DefaultTextField(
    this._label, {
    this.hint,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      // ENTER BUTTON
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) FocusScope.of(context).requestFocus(focusNode);
      },
      style: TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        labelText: _label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 30,
        ),
        hintStyle: TextStyle(
          color: Colors.blue,
          fontSize: 20,
        ),
        hintText: hint,
      ),
    );
  }
}
