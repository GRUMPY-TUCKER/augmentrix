import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
        required this.hint,
        required this.label,
        this.controller,
        this.isPassword = false});
  final String hint;
  final String label;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          suffixStyle: GoogleFonts.acme(),
          hintStyle: TextStyle(
            color: context.theme.colorScheme.outline,
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          label: Text(label, style: GoogleFonts.acme(color: Colors.grey)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
          ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColorDark),
        )
      ),
    );
  }
}