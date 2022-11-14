
import 'package:flutter/material.dart';

class ReadOnlyTextField extends StatelessWidget {
  final String label;
  final String value;
  final int? maxLines;

  const ReadOnlyTextField({
    super.key, required this.label, required this.value, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: TextField(
        controller: TextEditingController(text: value),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
          isDense: true,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 0.4,
          ),
          labelText: label,
        ),
        readOnly: true,
        maxLines: maxLines,
      ),
    );
  }
}
