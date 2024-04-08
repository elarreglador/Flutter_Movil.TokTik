import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {

  final List<Color> colors;
  final List<double> stops;

  const VideoBackground({
    super.key, 
    this.colors = const [
      Colors.transparent,
      Colors.grey
    ],
    this.stops = const [0.5, 1.0]
    });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            // Degradado desde la mitad (0.5) al borde
            // de la pantalla (1.0)
            stops: stops,

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        )
      )
    );
  }
}