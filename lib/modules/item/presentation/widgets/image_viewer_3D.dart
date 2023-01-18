import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ImageViewer3D extends StatelessWidget {
  final String src;
  final String alt;
  const ImageViewer3D({
    super.key,
    required this.src,
    required this.alt,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: ModelViewer(
        src: src,
        alt: alt,
        autoRotate: true,
      ),
    );
  }
}
