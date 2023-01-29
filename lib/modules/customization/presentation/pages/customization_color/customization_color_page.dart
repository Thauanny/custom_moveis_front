import 'package:customoveis/shared/widget/text_clippet.dart';
import 'package:customoveis/modules/shared/config/css_config.dart';
import 'package:customoveis/modules/shared/config/html_config.dart';
import 'package:customoveis/modules/shared/config/js_config.dart';
import 'package:customoveis/modules/shared/config/model_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../shared/config/sizes.dart';
import '../../../../../shared/widget/wave_clipper.dart';
import '../../../../shared/widgets/image_viewer_3D.dart';

class CustomizationColorPage extends StatelessWidget {
  const CustomizationColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                WaveClipper(
                  title: "",
                  height: MediaQuery.of(context).size.height * 0.3,
                  backIcon: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ImageViewer3D(
                    src: r'assets/cadeira.glb',
                    alt: 'A 3D model of an chair',
                    innerModelViewerHtml: htmlConfig,
                    overwriteNodeValidatorBuilder: nodeValidatorBuilder,
                    relatedCss: cssConfig,
                    relatedJs: jsConfig,
                  ),
                ),
                const TextClipper(
                  title: "Escolher Cor",
                  nextIcon: true,
                  backIcon: false,
                  routeName: '/customization/customization_atr',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
