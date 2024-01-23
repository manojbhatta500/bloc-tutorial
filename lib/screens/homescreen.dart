import 'package:counterbloc/screens/color_screen.dart';
import 'package:counterbloc/screens/counter_screen.dart';
import 'package:counterbloc/screens/text_screen.dart';
import 'package:counterbloc/widgets/gotobutton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CounterScreen()));
                },
                child: GotoButton(title: 'Counter Example')),

            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ColorsScreen()));
                },
                child: GotoButton(title: 'Color Example')),

            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TextScreen()));
                },
                child: GotoButton(title: 'Text Example')),

            // GotoButton(title: 'Color Example'),
            // GotoButton(title: 'Text Example'),
          ],
        ),
      ),
    );
  }
}
