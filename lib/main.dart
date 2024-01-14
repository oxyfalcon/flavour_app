import 'dart:async';
import 'package:flutter/material.dart';
import 'app.dart';

FutureOr<void> main() async {
  runApp(const App());
}

class NoFlavour extends StatelessWidget {
  const NoFlavour({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(child: MaterialApp(home: Center(child: Text("No Flavor")),),);
  }
}