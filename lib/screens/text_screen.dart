import 'package:counterbloc/textbloc/text_event.dart';
import 'package:counterbloc/textbloc/text_state.dart';
import 'package:counterbloc/textbloc/textbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'Enter Text'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context
                    .read<TextBloc>()
                    .add(UpdateTextEvent(getstring: textController.text));
              },
              child: const Text(
                'fetch text',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            BlocBuilder<TextBloc, TextState>(
              builder: (context, state) {
                return Text(
                  state.textdata.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
