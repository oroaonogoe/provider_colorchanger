import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_colorchanger/models/color_changer.dart';
import 'package:provider_colorchanger/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorChanger(),
      child: MaterialApp.router(
        title: 'Color Changer',
        routerConfig: goRouter(),
        debugShowCheckedModeBanner: false, // for release
      ),
    );
  }
}
