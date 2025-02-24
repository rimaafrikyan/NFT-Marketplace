import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Glassmorphism  extends StatelessWidget{


  final double blur;
  final double opaccity;
  final double radius;
  final Widget child;

  const Glassmorphism({
    Key?key, required this.blur, required this.opaccity, required this.radius, required this.child,
  }):super(key: key);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
                  borderRadius: BorderRadius.circular(radius),
                  child: BackdropFilter(filter: ImageFilter.blur(
                    sigmaX: blur,
                    sigmaY: blur
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(opaccity),
                      borderRadius: BorderRadius.all(Radius.circular(radius)),
                      border: Border.all(width: 1.5, color: Colors.white.withOpacity(opaccity),
                      )
                    ),
                    child: child,

                  ),
                  ),
                );
    
  }
}

