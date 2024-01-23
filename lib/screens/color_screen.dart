import 'package:counterbloc/colorbloc/container_color_bloc.dart';
import 'package:counterbloc/colorbloc/container_color_event.dart';
import 'package:counterbloc/colorbloc/container_color_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Change Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ContainerColorBloc, ContainerColorState>(
              builder: (context, state) {
                return Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  color: state.bloccolor,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ContainerColorBloc>().add(ContainerRedEvent());
              },
              child: Text('Change Color to Red'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<ContainerColorBloc>().add(ContainerYellowEvent());
              },
              child: Text('Change Color to Yellow'),
            ),
          ],
        ),
      ),
    );
  }
}
