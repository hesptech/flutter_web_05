

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiUxView extends StatelessWidget {
  const UiUxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1b263b),
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Ui/Ux',
            style: GoogleFonts.montserratAlternates(
              fontSize: 80,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}