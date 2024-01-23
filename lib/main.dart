import 'package:counterbloc/counterbloc/counter_bloc.dart';
import 'package:counterbloc/colorbloc/container_color_bloc.dart';
import 'package:counterbloc/screens/homescreen.dart';
import 'package:counterbloc/screens/color_screen.dart';
import 'package:counterbloc/screens/counter_screen.dart';
import 'package:counterbloc/screens/text_screen.dart';
import 'package:counterbloc/textbloc/textbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyAPp());
}

class MyAPp extends StatelessWidget {
  const MyAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ContainerColorBloc(),
        ),
        BlocProvider(
          create: (context) => TextBloc(),
        ),
      ],
      child: MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
