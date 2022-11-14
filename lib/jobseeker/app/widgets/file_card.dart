
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';

class FileCard extends StatelessWidget {
  final String title;
  final String fileName;
  final double margin;
  final Function()? onEdit;
  final Function()? onDelete;

  const FileCard({super.key, required this.title, required this.fileName, this.onEdit, this.onDelete, this.margin=16});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title, style: const TextStyle(color: Colors.black, fontSize: 16)),
          Card(
            margin: const EdgeInsets.only(top: 8),
            color: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16).copyWith(bottom: 8),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(fileName, style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MOutlinedButton(
                          minWidth: 75,
                          onPressed: () {  },
                          child: const Text('Edit'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: MOutlinedButton.error(
                            minWidth: 75,
                            onPressed: () {  },
                            child: const Text('Delete'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
