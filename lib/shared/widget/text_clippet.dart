import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../config/colors.dart';
import '../config/sizes.dart';

class TextClipper extends StatelessWidget {
  final String title;
  final bool? nextIcon;
  final bool? backIcon;
  final String? routeName;
  const TextClipper({
    super.key,
    required this.title,
    this.nextIcon,
    this.backIcon,
    this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              if (!(backIcon ?? false))
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: primaryDetailsColor,
                  ),
                  onPressed: () => Modular.to.pop(context),
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
          if (nextIcon ?? false)
            Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Proximo',
                    style: TextStyle(
                      color: primaryDetailsColor,
                      fontSize: medium_32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: small_16,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: primaryDetailsColor,
                      size: large_52,
                    ),
                    onPressed: () => routeName != null
                        ? Modular.to.pushNamed(routeName!)
                        : {},
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
