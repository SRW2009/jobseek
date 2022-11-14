
import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final int minWidth;
  final bool _isRound;

  const PrimaryElevatedButton({super.key, required this.onPressed, required this.child, this.minWidth=10}) : _isRound = false;

  const PrimaryElevatedButton.round({super.key, required this.onPressed, required this.child, this.minWidth=10}) : _isRound = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onPrimary),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
        padding: MaterialStateProperty.all(_isRound ? EdgeInsets.zero : const EdgeInsets.symmetric(horizontal: 52)),
        textStyle: const MaterialStatePropertyAll(TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        )),
        minimumSize: MaterialStateProperty.all(Size(_isRound ? 42 : 10, 42)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
