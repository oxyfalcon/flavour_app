import 'package:flavour_app/app.dart';
import 'package:flavour_app/main_banana.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.apple;
  runApp(const FlavourBanner(child: Apple()));
}

class Apple extends StatelessWidget {
  const Apple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent)),
      home: MyHomePage(title: F.title)
    );
  }
}
