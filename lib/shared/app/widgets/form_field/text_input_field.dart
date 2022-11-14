
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String? initialValue;
  final bool obscure;
  final bool required;
  final bool enabled;
  final bool readOnly;
  final TextInputType? inputType;
  final String? Function(String? s)? validator;
  final Widget? suffixIcon;

  const TextInputField({
    super.key,
    required this.controller,
    this.hint,
    this.initialValue,
    this.obscure=false,
    this.required=false,
    this.enabled=true,
    this.readOnly=false,
    this.inputType,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: FormField(
        initialValue: initialValue,
        validator: (s) {
          if (required && (s?.isEmpty ?? true)) return 'This field can\'t be empty.';
          return (validator != null) ? validator!(s) : null;
        },
        builder: (state) => Column(
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
                controller: controller,
                obscureText: obscure,
                keyboardType: inputType,
                readOnly: readOnly,
                decoration: InputDecoration(
                  suffixIcon: suffixIcon,
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
                    borderSide: (state.hasError) ? BorderSide(
                      color: Theme.of(context).colorScheme.error,
                    ) : BorderSide.none,
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
                onChanged: (s) => state.didChange(s),
              ),
            ),
            if (state.hasError) Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${state.errorText}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
