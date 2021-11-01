import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'package:chat_app/resources/app_font_sizes.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        filled: true,
        fillColor: Theme.of(context).cardColor,
        prefixIcon: Material(
          color: Colors.transparent,
          child: IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
            splashRadius: 24,
          ),
        ),
        hintText: FlutterI18n.plural(
          context,
          'home.search.number',
          2,
        ),
        hintStyle: TextStyle(color: Theme.of(context).hintColor),
        suffixIcon: GestureDetector(
          onLongPressUp: () {
            print('Hello');
          },
          onLongPressStart: (details) {
            print('Start');
          },
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Icon(
                Icons.keyboard_voice,
                color: Theme.of(context).colorScheme.primary,
              ),
              onTap: () {},
              radius: 64,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
      style: TextStyle(
        fontSize: AppFontSizes.columbian,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
