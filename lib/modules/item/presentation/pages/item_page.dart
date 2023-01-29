import 'package:customoveis/modules/shared/widgets/image_viewer_3D.dart';
import 'package:customoveis/modules/shared/widgets/primary_button.dart';
import 'package:customoveis/shared/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../widgets/diagonal_clipper.dart';
import '../widgets/price_label.dart';
import '../../../../shared/widget/wave_clipper.dart';

Map mapTest = {
  "Color": "preto",
  "Altura": 1.20,
  "Largura": 60.0,
  "Largura2": 60.0,
  "Largura3": 60.0,
  "Largura4": 60.0,
};
Map mapIconTest = {
  "Color": Icons.color_lens,
  "Altura": Icons.swap_vert,
  "Largura": Icons.swap_horiz,
  "Largura2": Icons.open_in_full_rounded,
  "Largura3": Icons.open_in_full_rounded,
  "Largura4": Icons.open_in_full_rounded,
};

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                WaveClipper(
                  title: "Cadeira",
                  height: MediaQuery.of(context).size.height * 0.3,
                  backIcon: false,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: small_16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.35,
                            ),
                            child: DiagonalClipper(
                              icons: mapIconTest,
                              information: mapTest,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.08,
                            ),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.45,
                              child: const ImageViewer3D(
                                src: r'assets/cadeira.glb',
                                alt: 'A 3D model of an chair',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: medium_32,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: medium_36,
                left: small_16,
                right: small_16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PriceLabel(
                    text: 'Valor: 45,00',
                  ),
                  PrimaryButton(
                    text: 'Costumizar',
                    onPressed: () {
                      Modular.to
                          .pushNamed('/customization/customization_color');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
