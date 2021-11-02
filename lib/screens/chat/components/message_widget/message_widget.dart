import 'package:flutter/material.dart';

import 'package:chat_app/resources/app_colors.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.date,
    required this.message,
    this.collocutor,
  }) : super(key: key);

  final String date;
  final Widget message;
  final Collocutor? collocutor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(date)),
        const SizedBox(height: 12),
        (collocutor != null)
            ? Align(
                alignment: Alignment.topLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: CircleAvatar(
                          backgroundColor: AppColors.tuna,
                          child: Text(
                            collocutor?.fullName
                                    .substring(0, 1)
                                    .toUpperCase() ??
                                '',
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                          foregroundImage: collocutor?.avatar,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    message,
                  ],
                ),
              )
            : Align(alignment: Alignment.topRight, child: message),
      ],
    );
  }
}

class Collocutor {
  final String fullName;
  final ImageProvider<Object>? avatar;
  Collocutor({
    required this.fullName,
    this.avatar,
  });
}
