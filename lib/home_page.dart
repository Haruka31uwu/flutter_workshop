import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Buttons'),
            onTap: () => context.go('/subpage1'),
          ),
          ListTile(
            title: const Text('Text'),
            onTap: () => context.go('/subpage2'),
          ),
          ListTile(
            title: const Text('Forms'),
            onTap: () => context.go('/subpage3'),
          ),
          // Agrega más elementos de lista para tus subpáginas
        ],
      ),
    );
  }
}
