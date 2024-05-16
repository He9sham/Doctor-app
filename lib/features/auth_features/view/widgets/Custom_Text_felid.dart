import 'package:flutter/material.dart';

class CustomTextfelid extends StatelessWidget {
  const CustomTextfelid({
    super.key,
    required this.title,
    required this.iconData,
    this.validator,
    this.onChanged,
  });
  final String title;
  final IconData iconData;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
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
