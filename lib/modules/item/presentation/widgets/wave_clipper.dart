import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:customoveis/shared/colors.dart';
import 'package:customoveis/shared/sizes.dart';

class WaveClipper extends StatelessWidget {
  final String title;
  const WaveClipper({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: medium_20,
            bottom: MediaQuery.of(context).size.height * 0.16,
          ),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: primaryDetailsColor,
              ),
              Text(
                title,
                style: TextStyle(
                  color: primaryDetailsColor,
                  fontSize: medium_36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
