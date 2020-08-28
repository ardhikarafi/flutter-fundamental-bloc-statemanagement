import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_light_blue, to_else }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  @override
  Color get initialState => Colors.white;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    // _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
    if (event == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else if (event == ColorEvent.to_light_blue) {
      _color = Colors.lightBlue;
    } else {
      _color = Colors.black;
    }
    yield _color;
  }
}
