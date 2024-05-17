import 'package:flutter/material.dart';

class CustomTextfelid extends StatelessWidget {
  const CustomTextfelid({
    super.key,
    required this.title,
    required this.iconData,
    this.validator,
    this.onChanged,
    this.controller,
    required this.obscureText,
  });
  final String title;
  final IconData iconData;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.07,
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        obscureText: obscureText,
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: Colors.white,
          ),
          label: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
