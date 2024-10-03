import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.icon,
    required this.hint,
  });
  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(icon),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
