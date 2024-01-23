import 'package:flutter/material.dart';

class GotoButton extends StatelessWidget {
  const GotoButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text(title)),
    );
  }
}
