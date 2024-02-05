import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0d1b2a),
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Home',
            style: Theme.of(context).textTheme.titleLarge,
            /* style: GoogleFonts.montserratAlternates(
              fontSize: 80,
              fontWeight: FontWeight.bold
            ), */
          ),
        ),
      ),
    );
  }
}