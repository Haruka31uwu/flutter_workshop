import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextEx extends StatelessWidget {
  const TextEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hola mundo!'),
          const Text(
            'Hola mundo!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.systemRed,
            ),
          ),
          const Text(
            'Hola mundo!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.systemGreen,
              decoration: TextDecoration.underline,
            ),
          ),
          Text('Hola Mundo',
              style: GoogleFonts.nunito(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.systemIndigo,
                decoration: TextDecoration.underline,
              )),
        ],
      ),
    );
  }
}
