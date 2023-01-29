import 'package:flutter/material.dart';

import '../../../../shared/config/js_config.dart';

class CustomizationAtributesPage extends StatelessWidget {
  const CustomizationAtributesPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(choosedColor);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [Text('atributes')],
        ),
      ),
    );
  }
}
