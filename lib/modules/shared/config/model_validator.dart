import 'package:model_viewer_plus/src/model_viewer_plus_web.dart';
import 'package:model_viewer_plus/src/shim/dart_html_fake.dart'
    if (dart.library.html) 'dart:html';

NodeValidatorBuilder nodeValidatorBuilder = defaultNodeValidatorBuilder
  ..allowElement(
    'button',
    attributes: ['data-color'],
    uriPolicy: AllowAllUri(),
  );
