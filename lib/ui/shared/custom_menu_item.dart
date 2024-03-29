import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatefulWidget {

  final String text;
  final Function onPressed;
  final int delay;

  const CustomMenuItem({
    Key? key,
    required this.text,
    required this.onPressed, 
    this.delay = 0
  }) : super(key: key);

  @override
  _CustomMenuItemState createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 10,
      duration: Duration(milliseconds: 150),
      delay: Duration( milliseconds: widget.delay ),
      child: MouseRegion(
        onEnter: ( _ ) => setState(() => isHover = true ),
        onExit: ( _ ) => setState(() => isHover = false ),
        child: GestureDetector(
          onTap: () => widget.onPressed(),
          child: AnimatedContainer(
            duration: Duration( milliseconds: 300 ),
            width: 150,
            height: 50,
            color: isHover ? const Color(0xFF778da9) : Colors.transparent,
            child: Center(
              child: Text(
                widget.text,
                style: GoogleFonts.montserratAlternates( 
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.5, 1.5),
                      blurRadius: 1.0,
                      //color: Color.fromARGB(100, 0, 0, 0),
                    ),
                  ],
                  fontSize: 20, 
                  color: Colors.white 
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}