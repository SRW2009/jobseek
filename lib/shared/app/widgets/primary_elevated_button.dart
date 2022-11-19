
import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double minWidth;
  final double horizontalPadding;
  final double? radius;

  const PrimaryElevatedButton({super.key, required this.onPressed, required this.child,
    this.minWidth=10, this.horizontalPadding=52}) : radius = null;

  const PrimaryElevatedButton.round({super.key, required this.onPressed, required this.child, this.horizontalPadding=0, this.radius=42})
      : minWidth=42;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onPrimary),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius==null ? 24 : (radius!)/2))),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: horizontalPadding)),
        textStyle: const MaterialStatePropertyAll(TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        )),
        minimumSize: MaterialStateProperty.all(radius==null ? Size(minWidth, 42) : Size.square(radius!)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
