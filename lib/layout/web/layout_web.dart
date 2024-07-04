import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:responsividade/layout/web/widget/display_nav/display_responsive.dart';
import 'package:responsividade/layout/web/widget/display_nav/header.dart';
import 'package:responsividade/layout/web/widget/display_nav/sidebar_tile.dart';

class LayoutWeb extends StatelessWidget {
  const LayoutWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final displayWidth = (size.width * 0.20).clamp(180, 500).toDouble();

    final visible = size.width > 869 ? true : false;
    log(size.width.toString());

    int crossAxisCount() {
      if (size.width > 1000) {
        return 6;
      } else if (size.width > 869) {
        return 4;
      } else if (size.width > 680) {
        return 3;
      } else if (size.width > 500) {
        return 2;
      } else {
        return 1;
      }
    }

    return Scaffold(
      body: Row(
        children: [
          DisplayResponsive(
            height: size.height,
            width: displayWidth,
            child: Column(
              children: [
                Header(
                  width: double.infinity,
                  isVisible: visible,
                ),
                const SizedBox(height: 24),
                const Divider(),
                const SizedBox(height: 20),
                SidebarTile(
                  icon: Icons.home,
                  title: 'Home',
                  isVisible: visible,
                ),
                const SizedBox(height: 8),
                SidebarTile(
                  icon: Icons.person,
                  title: 'Profile',
                  isVisible: visible,
                ),
                const SizedBox(height: 8),
                SidebarTile(
                  icon: Icons.settings,
                  title: 'Settings',
                  isVisible: visible,
                ),
                const SizedBox(height: 8),
                SidebarTile(
                  icon: Icons.logout,
                  title: 'Logout',
                  isVisible: visible,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount(),
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
