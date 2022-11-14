
import 'package:flutter/material.dart';

import 'theme_enum.dart';

class MOutlinedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double minWidth;
  final ThemeEnum theme;

  const MOutlinedButton({super.key, required this.onPressed, required this.child, this.minWidth=0})
      : theme=ThemeEnum.primary;

  const MOutlinedButton.error({super.key, required this.onPressed, required this.child, this.minWidth=0})
      : theme=ThemeEnum.error;

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (theme) {
      case ThemeEnum.error:
        color = Theme.of(context).colorScheme.error;
        break;
      default:
        color = Theme.of(context).colorScheme.secondary;
    }

    return OutlinedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(color),
        backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.surface),
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
