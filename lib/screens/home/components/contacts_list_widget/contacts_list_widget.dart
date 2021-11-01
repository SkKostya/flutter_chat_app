import 'package:flutter/material.dart';

import 'package:chat_app/resources/app_font_sizes.dart';
import 'package:chat_app/screens/home/components/contact_widget/contact_widget.dart';

class ContactsListWidget extends StatelessWidget {
  const ContactsListWidget({
    Key? key,
    required this.title,
    required this.contacts,
  }) : super(key: key);

  final String title;
  final List<ContactWidget> contacts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: AppFontSizes.englishSmall,
            color: Theme.of(context).colorScheme.secondaryVariant,
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: contacts
              .map<Widget>(
                (contact) => Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: contact,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
