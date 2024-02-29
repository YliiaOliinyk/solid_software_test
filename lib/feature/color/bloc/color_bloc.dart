import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'color_event.dart';
part 'color_state.dart';

///Bisuness logic class
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ///Constructor
  ColorBloc() : super(const ColorState(red: 255, green: 255, blue: 255)) {
    ///Generate random color on tap
    on<TapOnTheScreen>(
      (event, emit) {
        emit(
          ColorState(
            red: Random().nextInt(255),
            green: Random().nextInt(255),
            blue: Random().nextInt(255),
          ),
        );
      },
    );
  }
}
