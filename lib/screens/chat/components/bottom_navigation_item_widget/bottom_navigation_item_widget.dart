import 'package:flutter/material.dart';

class BottomNavigationItemWidget extends StatelessWidget {
  const BottomNavigationItemWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.onClick,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.transparent,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: 44,
            height: 44,
            child: Column(
              children: [
                Icon(icon),
                const SizedBox(height: 4),
                Text(label),
              ],
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
