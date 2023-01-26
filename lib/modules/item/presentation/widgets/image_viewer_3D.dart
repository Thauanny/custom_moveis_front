import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:model_viewer_plus/src/model_viewer_plus_web.dart';
import 'package:model_viewer_plus/src/shim/dart_html_fake.dart'
    if (dart.library.html) 'dart:html';

String js = r'''
  const modelViewerColor = document.querySelector("model-viewer#color");
  document.querySelector('#color-controls').addEventListener('click', (event) => {
    const colorString = event.target.dataset.color;
    const [material] = modelViewerColor.model.materials;
    material.pbrMetallicRoughness.setBaseColorFactor(colorString);
});
''';
String css = r'''
.button {
  background-color: #fff;
  border: 1px solid #d5d9d9;
  border-radius: 8px;
  box-shadow: rgba(213, 217, 217, .5) 0 2px 5px 0;
  box-sizing: border-box;
  color: #0f1111;
  cursor: pointer;
  display: inline-block;
  font-family: "Amazon Ember",sans-serif;
  font-size: 13px;
  line-height: 29px;
  padding: 0 10px 0 11px;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
  width: 100px;
  position: absolute;
  z-index: 2;
}

.button:hover {
  background-color: #f7fafa;
}

.button:focus {
  border-color: #008296;
  box-shadow: rgba(213, 217, 217, .5) 0 2px 5px 0;
  outline: 0;
}

.button-red{
  top:30%;
  left:20%;
}
.button-green{
  top:40%;
  left:30%;
}
.button-blue{
  top:40%;
  left:55%;
}

''';

String html = r'''
  <div class="controls" id="color-controls">
    <button data-color="#ff0000" class="button button-red" role="button">Red</button>
    <button data-color="#00ff00" class="button button-green" role="button">Green</button>
    <button data-color="#0000ff" class="button button-blue" role="button">Blue</button>
  </div>  
''';
NodeValidatorBuilder myNodeValidatorBuilder = defaultNodeValidatorBuilder
  ..allowElement('button',
      attributes: ['data-color'], uriPolicy: AllowAllUri());

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
        id: "color",
        touchAction: TouchAction.panY,
        ar: true,
        cameraControls: true,
        relatedJs: js,
        relatedCss: css,
        innerModelViewerHtml: html,
        overwriteNodeValidatorBuilder: myNodeValidatorBuilder,
      ),
    );
  }
}
