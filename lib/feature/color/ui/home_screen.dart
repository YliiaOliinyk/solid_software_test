import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test/feature/color/bloc/color_bloc.dart';

///Home screen
class HomeScreen extends StatelessWidget {
  ///Default constructor
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTapUp: (details) {
        context.read<ColorBloc>().add(TapOnTheScreen());
      },
      child: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Color.fromRGBO(
              state.red,
              state.green,
              state.blue,
              1,
            ),
            body: Center(
              child: Text(
                'Hello there',
                style: theme.textTheme.titleMedium,
              ),
            ),
          );
        },
      ),
    );
  }
}
