import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, this.onPressed});
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: 180,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.primaryFixedDim),
              ),
              onPressed: onPressed,
              child: Text(
                label,
                style: GoogleFonts.acme(fontSize: 20, color: context.theme.primaryColorLight),
              ))),
    );
  }
}