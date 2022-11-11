
import 'package:flutter/material.dart';

class SecondaryElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;

  const SecondaryElevatedButton({Key? key, required this.onPressed, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onSecondary),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 52)),
        textStyle: const MaterialStatePropertyAll(TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        )),
        minimumSize: const MaterialStatePropertyAll(Size(10, 42)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
