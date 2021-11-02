import 'package:flutter/material.dart';

import 'package:chat_app/resources/app_font_sizes.dart';

class TextMessageWidget extends StatelessWidget {
  const TextMessageWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    final maxMessageWidth = MediaQuery.of(context).size.width * 0.75;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxMessageWidth),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          message,
          style: const TextStyle(fontSize: AppFontSizes.columbianSmall),
        ),
      ),
    );
  }
}
