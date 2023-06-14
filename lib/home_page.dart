import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workshop_flutter/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Subpágina 1'),
            onTap: () => context.go('/subpage1'),
          ),
          ListTile(
            title: const Text('Subpágina 2'),
            onTap: () => context.go('/subpage2'),
          ),
          // Agrega más elementos de lista para tus subpáginas
        ],
      ),
    );
  }
}
