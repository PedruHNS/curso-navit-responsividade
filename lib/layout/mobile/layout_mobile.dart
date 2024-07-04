import 'package:flutter/material.dart';
import 'package:responsividade/layout/mobile/widget/custom_drawer.dart';

class LayoutMobile extends StatelessWidget {
  const LayoutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Mobile Layout'),
      ),
    );
  }
}
