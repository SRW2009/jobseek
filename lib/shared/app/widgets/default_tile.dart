
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/circle_image.dart';

class DefaultTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image? image;
  final double imageRadius;
  final Function()? onTap;
  final bool selected;

  const DefaultTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.image,
    this.onTap,
    this.imageRadius=70,
    this.selected=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      decoration: ShapeDecoration(
        color: (selected) ? Theme.of(context).splashColor : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (image!=null) CircleImage(imageRadius, image!),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: (image!=null) ? 14 : 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(subtitle),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
