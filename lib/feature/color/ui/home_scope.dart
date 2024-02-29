import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test/feature/color/bloc/color_bloc.dart';
import 'package:solid_software_test/feature/color/ui/home_screen.dart';

///Scope for home screen
class HomeScope extends StatelessWidget {
  ///Default constructor
  const HomeScope({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: const HomeScreen(),
    );
  }
}
