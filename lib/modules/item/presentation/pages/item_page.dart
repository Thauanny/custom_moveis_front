import 'package:auto_size_text/auto_size_text.dart';
import 'package:customoveis/shared/colors.dart';
import 'package:customoveis/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:shadow_clip/shadow_clip.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
  "Altura": Icons.height,
  "Largura": Icons.open_in_full_rounded,
  "Largura2": Icons.open_in_full_rounded,
  "Largura3": Icons.open_in_full_rounded,
  "Largura4": Icons.open_in_full_rounded,
};

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
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
                        "Cadeira",
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: mendium_40),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.35),
                          child: ClipShadow(
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-small_4, -small_4),
                                spreadRadius: 1,
                                blurRadius: 15,
                              ),
                              BoxShadow(
                                color: boxShadowPrimary.withOpacity(0.6),
                                offset: const Offset(small_4, small_4),
                                spreadRadius: 1,
                                blurRadius: 15,
                              )
                            ],
                            clipper: RoundedDiagonalPathClipper(),
                            child: Container(
                              height: mapTest.length * 70,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(medium_36),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.15,
                                    left: MediaQuery.of(context).size.height *
                                        0.05,
                                    right: MediaQuery.of(context).size.height *
                                        0.05),
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent:
                                        MediaQuery.of(context).size.height *
                                            0.28,
                                    childAspectRatio: 5 / 2,
                                    crossAxisSpacing: medium_20,
                                    mainAxisSpacing: medium_20,
                                  ),
                                  itemCount: mapTest.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(80),
                                      ),
                                      elevation: 10,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            mapIconTest.values
                                                .toList(growable: true)[index],
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.040,
                                            color: secondaryDetailsColor,
                                          ),
                                          AutoSizeText(
                                            maxLines: 1,
                                            maxFontSize: medium_20,
                                            mapTest.values
                                                .toList(growable: true)[index]
                                                .toString(),
                                            style: TextStyle(
                                              fontSize: medium_20,
                                              color: secondaryDetailsColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.45,
                          child: ModelViewer(
                            src: r'assets/cadeira.glb',
                            alt: "A 3D model of an astronaut",
                            autoRotate: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: medium_32,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: primaryColor!.withOpacity(0.5),
                          ),
                        ),
                        child: const Center(
                          child: AutoSizeText(
                            'Valor: 45,00',
                            style: TextStyle(
                              fontSize: medium_24,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
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
                        onPressed: () {},
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text("Customizar"),
                            Icon(
                              Icons.navigate_next_outlined,
                              size: mendium_40,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: mendium_40,
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
