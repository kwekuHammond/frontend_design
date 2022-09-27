import 'package:flutter/material.dart';
import 'package:frontend_design/utils/constants.dart';

TextFormField TextFormInput() {
  return TextFormField(
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'enter password';
      }
      return null;
    },
    decoration: const InputDecoration(
      icon: Icon(Icons.lock),
      labelText: "Enter Password",
      // hintText: "Password",
      hintStyle: TextStyle(
        color: primaryColor,
      ),
    ),
  );
}
