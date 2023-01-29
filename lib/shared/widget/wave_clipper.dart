import 'package:customoveis/shared/widget/text_clippet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:customoveis/shared/config/colors.dart';
import 'package:customoveis/shared/config/sizes.dart';

class WaveClipper extends StatelessWidget {
  final String title;
  final bool? nextIcon;
  final double height;
  final bool? backIcon;
  const WaveClipper({
    Key? key,
    required this.title,
    required this.height,
    this.nextIcon,
    this.backIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: medium_20,
            bottom: MediaQuery.of(context).size.height * 0.16,
          ),
          child: TextClipper(
            title: title,
            nextIcon: nextIcon,
            backIcon: backIcon,
          ),
        ),
      ),
    );
  }
}
