import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:model_viewer_plus/src/shim/dart_html_fake.dart'
    if (dart.library.html) 'dart:html';

class ImageViewer3D extends StatelessWidget {
  final String src;
  final String alt;
  final String? relatedJs;
  final String? innerModelViewerHtml;
  final String? relatedCss;
  final NodeValidatorBuilder? overwriteNodeValidatorBuilder;

  const ImageViewer3D({
    super.key,
    required this.src,
    required this.alt,
    this.relatedJs,
    this.innerModelViewerHtml,
    this.relatedCss,
    this.overwriteNodeValidatorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ModelViewer(
      src: src,
      alt: alt,
      id: "color",
      touchAction: TouchAction.panY,
      ar: true,
      cameraControls: true,
      relatedJs: relatedJs,
      relatedCss: relatedCss,
      innerModelViewerHtml: innerModelViewerHtml,
      overwriteNodeValidatorBuilder: overwriteNodeValidatorBuilder,
    );
  }
}
