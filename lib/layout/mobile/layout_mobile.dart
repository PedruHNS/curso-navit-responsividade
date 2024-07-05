import 'package:flutter/material.dart';
import 'package:responsividade/layout/mobile/widget/custom_drawer.dart';

class LayoutMobile extends StatelessWidget {
  const LayoutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: CustomScrollView(
          slivers: [
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                );
              },
            )
          ],
        )),
      ),
    );
  }
}
