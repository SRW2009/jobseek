
import 'package:flutter/material.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double minWidth;

  const PrimaryOutlinedButton({Key? key, required this.onPressed, required this.child, this.minWidth=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 12)),
        textStyle: const MaterialStatePropertyAll(TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        )),
        minimumSize: MaterialStatePropertyAll(Size(minWidth, 34)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
