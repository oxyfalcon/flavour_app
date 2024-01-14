import 'package:flavour_app/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NoFlavour()
    );
  }

}

class FlavourBanner extends StatelessWidget{
  const FlavourBanner({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return banner(child);
  }

  Widget banner(Widget child){
    return kDebugMode ? Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(message: F.name, location: BannerLocation.topStart, color: Colors.green.withOpacity(0.6),
          textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12.0,
              letterSpacing: 1.0),
          textDirection: TextDirection.ltr ,child: child),
    ) : Container(child: child);
  }
}