
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/utils/date_formatter.dart';
import 'package:jobseek/shared/domain/entities/notification.dart' as n;
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';

class NotificationTile extends StatelessWidget {
  final String image;
  final String message;
  final DateTime notifiedAt;
  final n.Notification item;
  final Function()? onSeeDetail;

  const NotificationTile(this.item, {Key? key, required this.image, required this.message, required this.notifiedAt, this.onSeeDetail}) : super(key: key);

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
                // TODO: fetch image from network
                child: Image.asset(image, fit: BoxFit.fitHeight),
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
                  Text(message, maxLines: 2, overflow: TextOverflow.ellipsis),
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(DateFormatter.toApproximateTime(notifiedAt)),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: InkWell(
                    onTap: () {},
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
