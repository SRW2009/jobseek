
import 'package:flutter/material.dart';
import 'package:jobseek/shared/domain/entities/category.dart';

class CategoryCard extends StatelessWidget {
  final Category item;
  final Function()? onTap;

  const CategoryCard(this.item, {super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
              child: AspectRatio(
                aspectRatio: 10/16,
                child: Image.asset(item.image, fit: BoxFit.fitHeight,),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 18,
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
