
import 'package:flutter/material.dart';

class NextFloatingActionButton extends StatelessWidget {
  final Function() onPressed;

  const NextFloatingActionButton({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: const Icon(Icons.arrow_back, textDirection: TextDirection.rtl),
      onPressed: onPressed,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
  }
}