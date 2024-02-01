

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OsView extends StatelessWidget {
  const OsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'iOS/Android',
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