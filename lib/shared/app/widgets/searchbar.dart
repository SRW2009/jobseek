
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function(String) onChanged;
  final String? hint;
  final String? initialValue;
  final bool enabled;
  final TextInputType? inputType;

  const SearchBar({
    Key? key,
    required this.onChanged,
    this.hint,
    this.initialValue,
    this.enabled=true,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
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
          child: TextField(
            keyboardType: inputType,
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.search, size: 34,),
              filled: true,
              fillColor: enabled
                  ? Theme.of(context).colorScheme.tertiary
                  : Theme.of(context).colorScheme.tertiaryContainer,
              contentPadding: const EdgeInsets.all(16),
              isDense: true,
              hintText: hint,
              hintStyle: TextStyle(
                color: Theme.of(context).colorScheme.onTertiary,
              ),
              enabled: enabled,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(28),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(28),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
