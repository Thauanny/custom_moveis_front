import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.handyman),
        ElevatedButton(
          onPressed: () => Modular.to.pushReplacementNamed('/itemPage'),
          child: const Text('itemPage'),
        ),
      ],
    );
  }
}
