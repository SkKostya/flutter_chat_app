import 'package:flutter/material.dart';

import 'package:chat_app/resources/app_colors.dart';
import 'package:chat_app/resources/app_font_sizes.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
    required this.title,
    this.avatar,
    required this.time,
    required this.messageText,
  }) : super(key: key);

  final String title;
  final ImageProvider<Object>? avatar;
  final String time;
  final String messageText;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: AppColors.tuna,
                  child: Text(
                    title.substring(0, 1).toUpperCase(),
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  foregroundImage: avatar,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          fontSize: AppFontSizes.columbianSmall,
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          color: Theme.of(context).textTheme.subtitle1?.color,
                          fontSize: AppFontSizes.pica,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      messageText,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondaryVariant,
                        fontSize: AppFontSizes.englishSmall,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
