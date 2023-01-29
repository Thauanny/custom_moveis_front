String choosedColor = '#F8F8FF';

const String jsConfig = r'''
  const modelViewerColor = document.querySelector("model-viewer#color");
  document.querySelector('#color-controls').addEventListener('click', (event) => {
    const colorString = event.target.dataset.color;
    choosedColor = colorString;
    const [material] = modelViewerColor.model.materials;
    material.pbrMetallicRoughness.setBaseColorFactor(colorString);
});
''';
