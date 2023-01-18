import 'package:auto_size_text/auto_size_text.dart';
import 'package:customoveis/modules/item/presentation/widgets/information_card.dart';
import 'package:customoveis/shared/box_shadow.dart';
import 'package:customoveis/shared/colors.dart';
import 'package:customoveis/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shadow_clip/shadow_clip.dart';

class DiagonalClipper extends StatelessWidget {
  //TODO: ajustar logica das listas
  final Map information;
  final Map icons;
  const DiagonalClipper({
    super.key,
    required this.information,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      boxShadow: [
        primaryBoxShadow,
        secondaryBoxShadow,
      ],
      clipper: RoundedDiagonalPathClipper(),
      child: Container(
        height: information.length * 70,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(medium_36),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.height * 0.05,
            right: MediaQuery.of(context).size.height * 0.05,
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.height * 0.28,
              childAspectRatio: 5 / 2,
              crossAxisSpacing: medium_20,
              mainAxisSpacing: medium_20,
            ),
            itemCount: information.length,
            itemBuilder: (BuildContext context, index) {
              return InformationCard(
                children: [
                  Icon(
                    icons.values.toList(growable: true)[index],
                    size: MediaQuery.of(context).size.height * 0.040,
                    color: secondaryDetailsColor,
                  ),
                  AutoSizeText(
                    maxLines: 1,
                    maxFontSize: medium_20,
                    information.values.toList(growable: true)[index].toString(),
                    style: TextStyle(
                      fontSize: medium_20,
                      color: secondaryDetailsColor,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
