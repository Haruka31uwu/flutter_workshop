import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Subpage'),
      actions: [
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () => context.go('/'),
        ),
      ],
    ));
  }
}
