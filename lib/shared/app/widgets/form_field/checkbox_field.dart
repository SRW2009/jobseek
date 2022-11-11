
import 'package:flutter/material.dart';

class CheckboxField extends StatelessWidget {
  final ValueNotifier<bool?> notifier;
  final Widget? title;
  final bool enabled;
  final bool? initialValue;
  final bool tristate;
  final String? Function(bool? s)? validator;

  const CheckboxField({
    Key? key,
    required this.notifier,
    this.title,
    this.enabled=true,
    this.initialValue=false,
    this.tristate=false,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: FormField(
        initialValue: initialValue,
        validator: validator,
        builder: (state) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  tristate: tristate,
                  value: state.value,
                  onChanged: (s) {
                    state.didChange(s);
                    notifier.value = s;
                  },
                  activeColor: Theme.of(context).colorScheme.secondary,
                ),
                if (title != null) Expanded(
                  child: title!,
                ),
              ],
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
