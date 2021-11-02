import 'package:flutter/material.dart';

import '../bottom_navigation_item_widget/bottom_navigation_item_widget.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavigationItemWidget(
              icon: Icons.attach_file,
              label: 'File',
              onClick: () {},
            ),
            BottomNavigationItemWidget(
              icon: Icons.camera_alt,
              label: 'Picture',
              onClick: () {},
            ),
            GestureDetector(
              onLongPressUp: () {
                print('Hello');
              },
              onLongPressStart: (details) {
                print('Start');
              },
              child: BottomNavigationItemWidget(
                icon: Icons.keyboard_voice,
                label: 'Audio',
                onClick: () {},
              ),
            ),
            BottomNavigationItemWidget(
              icon: Icons.videocam,
              label: 'video',
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
