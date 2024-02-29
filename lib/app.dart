import 'package:flutter/material.dart';
import 'package:solid_software_test/feature/color/ui/home_scope.dart';

///App widget
class App extends StatelessWidget {
  ///Default constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScope(),
    );
  }
}
