import 'package:chat_app/screens/chat/components/message_widget/message_types/text_message_widget.dart';
import 'package:chat_app/screens/chat/components/message_widget/message_widget.dart';
import 'package:flutter/material.dart';

import 'components/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'components/send_message_widget/send_message_widget.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  static final List<Message> messages = <Message>[
    const Message(
      date: 'Monday・11:11AM',
      message: TextMessageWidget(
        message: 'Are you available now?',
      ),
    ),
    Message(
      date: 'Monday・11:11AM',
      message: const TextMessageWidget(
        message:
            'Hey, What’s up? I am alright. What about you? Yeah, sure! We can seat together. Give me 10 mins.',
      ),
      collocutor: Collocutor(fullName: 'R'),
    ),
    const Message(
      date: 'Monday・11:11AM',
      message: TextMessageWidget(
        message:
            'Hey, What’s up? I am alright. What about you? Yeah, sure! We can seat together. Give me 10 mins.',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radowan'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: 10),
                      messages[index],
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ),
          const SendMessageWidget(),
          const SizedBox(height: 1),
          const CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}
