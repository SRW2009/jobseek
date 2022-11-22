
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/utils/date_formatter.dart';
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';

class SeeDetailTile extends StatelessWidget {
  final String image;
  final String? title;
  final Widget child;
  final DateTime? time;
  final Function()? onSeeDetail;
  final Function()? onMore;

  const SeeDetailTile({
    super.key,
    required this.image,
    required this.child,
    this.time,
    this.title,
    this.onSeeDetail,
    this.onMore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox.square(
              dimension: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.network(image, fit: BoxFit.fitHeight),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title!=null) Text(title!, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: child,
                  ),
                  MOutlinedButton(
                    onPressed: onSeeDetail,
                    child: const Text('see details'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (time!=null) Text(DateFormatter.toApproximateTime(time!)),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: InkWell(
                    onTap: onMore,
                    borderRadius: BorderRadius.circular(20),
                    child: const Icon(Icons.more_vert),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
