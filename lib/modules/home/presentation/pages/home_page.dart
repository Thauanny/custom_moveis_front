import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.handyman),
        ElevatedButton(
          onPressed: () => Modular.to.pushNamed('/itemPage'),
          child: const Text('home'),
        ),
      ],
    );
  }
}
