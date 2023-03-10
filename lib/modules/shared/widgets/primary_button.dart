import 'package:customoveis/shared/config/colors.dart';
import 'package:customoveis/shared/config/sizes.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: primaryColor ?? Colors.amber),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: small_12,
            vertical: small_12,
          ),
        ),
        icon: Icon(
          Icons.navigate_next_outlined,
          size: mendium_40,
          color: primaryDetailsColor,
        ),
        label: Text(
          text,
          style: TextStyle(
            fontSize: medium_24,
            color: primaryDetailsColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
