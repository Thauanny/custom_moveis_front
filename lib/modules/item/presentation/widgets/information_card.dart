import 'package:customoveis/shared/colors.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  final List<Widget> children;
  const InformationCard({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      elevation: 10,
      color: primaryDetailsColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children,
      ),
    );
  }
}
