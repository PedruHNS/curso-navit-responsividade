import 'package:flutter/material.dart';
import 'package:responsividade/layout/web/widget/display_nav/header.dart';
import 'package:responsividade/layout/web/widget/display_nav/sidebar_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Header(
              width: double.infinity,
            ),
            SizedBox(height: 24),
            Divider(),
            SizedBox(height: 20),
            SidebarTile(
              icon: Icons.home,
              title: 'Home',
            ),
            SizedBox(height: 8),
            SidebarTile(
              icon: Icons.person,
              title: 'Profile',
            ),
            SizedBox(height: 8),
            SidebarTile(
              icon: Icons.settings,
              title: 'Settings',
            ),
            SizedBox(height: 8),
            SidebarTile(
              icon: Icons.logout,
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
