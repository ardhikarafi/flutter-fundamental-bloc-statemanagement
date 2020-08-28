import 'package:flutter/material.dart';
import 'package:bloc_state_management/mainpage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBloc>(
          builder: (BuildContext context) => ColorBloc(), child: MainPage()),
    );
  }
}
