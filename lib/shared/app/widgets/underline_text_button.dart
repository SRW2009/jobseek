
import 'package:flutter/material.dart';

class UnderlineTextButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;

  const UnderlineTextButton({Key? key, required this.onPressed, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        textStyle: const MaterialStatePropertyAll(TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        )),
        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        overlayColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onSecondary),
      ),
      child: child,
    );
  }
}
