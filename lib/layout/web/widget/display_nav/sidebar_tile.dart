import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SidebarTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isVisible;
  const SidebarTile({
    super.key,
    required this.icon,
    required this.title,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isVisible ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30),
        const SizedBox(width: 8),
        Visibility(
          visible: isVisible,
          child: Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
