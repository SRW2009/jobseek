
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double radius;
  final Image image;

  const CircleImage(this.radius, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: radius,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius/2),
        child: image,
      ),
    );
  }

}