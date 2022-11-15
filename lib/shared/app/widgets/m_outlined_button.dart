
import 'package:flutter/material.dart';

import '../utils/theme_enum.dart';

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
  Widget build(BuildContext context) => OutlinedButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(_getForegroundColor(context)),
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

  Color _getForegroundColor(BuildContext context) {
    switch (theme) {
      case ThemeEnum.error:
        return Theme.of(context).colorScheme.error;
      default:
        return Theme.of(context).colorScheme.secondary;
    }
  }
}
