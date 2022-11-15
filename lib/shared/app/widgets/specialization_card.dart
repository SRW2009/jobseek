
import 'package:flutter/material.dart';

class SpecializationCard extends StatelessWidget {
  //final Specialization item;
  final String title;
  final IconData icon;
  final Function()? onTap;
  final bool selected;

  //const SpecializationCard(this.item, {super.key, this.onTap});

  const SpecializationCard({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.selected=false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      clipBehavior: Clip.antiAlias,
      color: (selected) ? Theme.of(context).splashColor : null,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: FittedBox(
                  child: Icon(
                    icon,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
