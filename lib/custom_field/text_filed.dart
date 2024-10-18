import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
 // TextEditingController controller;
  String hint;
  IconData icon;
  TextInputType type;
  TextInputAction action;
  String? Function(String?)? validator;

  CustomField({
    super.key,
    required this.icon,
    required this.hint,
    required this.type,
    required this.action,
    //required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      // controller: controller,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      keyboardType: type,
      textInputAction: action,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.orange,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.black,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        suffixIcon: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
