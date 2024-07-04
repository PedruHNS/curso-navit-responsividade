import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final bool isVisible;
  final double width;
  const Header({
    super.key,
    required this.width,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.blue[800]!,
            Colors.blue[700]!,
            Colors.blue[600]!,
            Colors.blue[500]!,
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            isVisible ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white70,
            radius: 30,
            child: Icon(
              Icons.person,
              size: 30,
            ),
          ),
          const SizedBox(height: 8),
          Visibility(
            visible: isVisible,
            child: const Text(
              'Pedro Henrique',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Visibility(
            visible: isVisible,
            child: const Text(
              'pedro.siqueira@gmail.com',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
