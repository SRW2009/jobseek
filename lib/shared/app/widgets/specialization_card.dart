
import 'package:flutter/material.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';

class SpecializationCard extends StatelessWidget {
  final Specialization item;
  final Function()? onTap;
  final bool selected;

  const SpecializationCard({
    super.key,
    required this.item,
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
                child: Image.network(item.image, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                item.title,
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
