import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem extends StatefulWidget {

  final String text;
  final IconData icon;
  final IconData? icon2;
  final bool isActive;
  final Function onPressed;

  const MenuItem({
    Key? key,
    required this.text,
    required this.icon,
    this.icon2,
    required this.onPressed,
    this.isActive = false,
  }) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
  //print(widget.isActive);
    return AnimatedContainer(
      duration: const Duration( milliseconds: 250 ),
      /* color: isHovered
        ? Colors.white.withOpacity(0.1)
        : widget.isActive ? Colors.white.withOpacity(0.1) : Colors.transparent, */
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.isActive ? null : () => widget.onPressed(),
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 30, vertical: 10),
            child: MouseRegion(
              onEnter: ( _ ) => setState( () => isHovered = true ),
              onExit: ( _ ) => setState( () => isHovered = false ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon( widget.icon, color: Colors.blueGrey),
                      const SizedBox( width: 3 ),
                      widget.icon2 != null 
                      ? Icon( widget.icon2, color : Colors.blueGrey)
                      : const SizedBox()
                    ],
                  ),

                  const SizedBox( height: 7 ),
                  Text(
                    widget.text,
                    style: GoogleFonts.montserratAlternates(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          //blurRadius: 1.0,
                          //color: Color.fromARGB(100, 0, 0, 0),
                        ),
                      ],
                      fontSize: 16,
                      fontWeight: widget.isActive ? FontWeight.bold : FontWeight.w600 ,
                      color: isHovered 
                        ? Colors.blueGrey
                        : widget.isActive ? Colors.blueGrey : Colors.blueGrey[200],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}