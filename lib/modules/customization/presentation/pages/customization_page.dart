import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomizationPage extends StatelessWidget {
  const CustomizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.handyman),
        ElevatedButton(
          onPressed: () => Modular.to.pushNamed('/Customization'),
          child: const Text('Customization'),
        ),
      ],
    );
  }
}
