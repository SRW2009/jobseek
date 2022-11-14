
import 'package:flutter/material.dart';

class NotReallyTextField extends StatelessWidget {
  final String label;
  final String value;
  final List<Widget>? actions;

  const NotReallyTextField({
    super.key, required this.label, required this.value, this.actions
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              value,
            ),
          ),
          if (actions != null) Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: actions!,
            ),
          ),
          Divider(
            height: (actions != null) ? 8 : 16,
            color: Theme.of(context).colorScheme.onTertiary,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
