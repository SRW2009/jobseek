
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double radius;
  final Image image;

  const CircleImage(this.radius, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius/2),
        ),
        shadows: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: const Offset(0, 2),
            blurRadius: 1,
            spreadRadius: 0.6,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius/2),
        child: image,
      ),
    );
  }

}