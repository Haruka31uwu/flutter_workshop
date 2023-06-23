import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Fluttertoast.showToast(
                msg: 'ElevatedButton',
                gravity: ToastGravity.BOTTOM,
                toastLength: Toast.LENGTH_LONG),
            child: const Text('ElevatedButton'),
          ),
          TextButton(
            onPressed: () => Fluttertoast.showToast(
                msg: 'TextButton',
                gravity: ToastGravity.BOTTOM,
                toastLength: Toast.LENGTH_LONG),
            child: const Text('TextButton'),
          ),
          OutlinedButton(
            onPressed: () => Fluttertoast.showToast(
                msg: 'OutlinedButton',
                gravity: ToastGravity.BOTTOM,
                toastLength: Toast.LENGTH_LONG),
            child: const Text('OutlinedButton'),
          ),
          IconButton(
              onPressed: () => Fluttertoast.showToast(
                  msg: 'IconButton',
                  gravity: ToastGravity.TOP,
                  toastLength: Toast.LENGTH_LONG),
              icon: const Icon(Icons.picture_in_picture_alt_sharp)),
        ],
      ),
    );
  }
}
