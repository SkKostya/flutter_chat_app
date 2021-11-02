import 'package:flutter/material.dart';

class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Add text to this message',
        hintStyle: TextStyle(color: Theme.of(context).hintColor),
        filled: true,
        fillColor: Theme.of(context).cardColor,
        contentPadding: const EdgeInsets.all(24),
        border: InputBorder.none,
        suffixIcon: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.transparent,
          child: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
