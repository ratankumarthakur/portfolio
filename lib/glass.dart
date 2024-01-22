import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class glass extends StatelessWidget {
   glass({super.key,required this.child,required this.width, required this.height});
  var width=0.0;
  var height=0.0;
  var child;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: width,
        height: height,
        borderRadius: 20,
        blur: 20,

        border: 0.4,
        linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
        Color(0xFFffffff).withOpacity(0.1),
    Color(0xFFFFFFFF).withOpacity(0.05),
    ],
    stops: [
    0.1,
    1,
    ]),
    borderGradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Color(0xFFffffff).withOpacity(0.5),
    Color((0xFFFFFFFF)).withOpacity(0.5),
    ],
    ),
    child:child);
  }
}
