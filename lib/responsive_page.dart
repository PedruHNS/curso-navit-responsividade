import 'package:flutter/material.dart';
import 'package:responsividade/layout/mobile/layout_mobile.dart';
import 'package:responsividade/layout/web/layout_web.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return size.width <= 664 ? const LayoutMobile() : const LayoutWeb();
  }
}
