import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:workshop_flutter/Buttons.dart';
import 'package:workshop_flutter/text.dart';

import 'forms.dart';

// ignore: must_be_immutable
class SubPage extends StatefulWidget {
  final String pageName;
  const SubPage({super.key, required this.pageName});

  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.pageName),
          actions: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => context.go('/'),
            ),
          ],
        ),
        floatingActionButton: widget.pageName == 'Buttons'
            ? FloatingActionButton(
                child: const Icon(Icons.warning),
                onPressed: () => Fluttertoast.showToast(
                    msg: widget.pageName,
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_SHORT),
              )
            : null,
        body: getComponent());
  }

  Widget getComponent() {
    switch (widget.pageName) {
      case 'Buttons':
        return const Buttons();
      case 'Text':
        return const TextEx();
      case 'Forms':
        return const Forms();
      default:
        return const Text('No se encontró la página');
    }
  }
}
