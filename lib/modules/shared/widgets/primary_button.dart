import 'package:customoveis/shared/colors.dart';
import 'package:customoveis/shared/sizes.dart';
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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: small_12,
          vertical: small_12,
        ),
        textStyle: const TextStyle(
          fontSize: medium_24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(text),
          const Icon(
            Icons.navigate_next_outlined,
            size: mendium_40,
          )
        ],
      ),
    );
  }
}
