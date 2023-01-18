import 'package:auto_size_text/auto_size_text.dart';
import 'package:customoveis/shared/colors.dart';
import 'package:customoveis/shared/sizes.dart';
import 'package:flutter/material.dart';

class PriceLabel extends StatelessWidget {
  final String text;
  const PriceLabel({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor!.withOpacity(0.5),
        ),
      ),
      child: Center(
        child: AutoSizeText(
          text,
          style: const TextStyle(
            fontSize: medium_24,
          ),
        ),
      ),
    );
  }
}
