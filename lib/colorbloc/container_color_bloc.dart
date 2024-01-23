import 'package:counterbloc/colorbloc/container_color_event.dart';
import 'package:counterbloc/colorbloc/container_color_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerColorBloc
    extends Bloc<ContainerColorEvent, ContainerColorState> {
  ContainerColorBloc() : super(ContainerInititalColor()) {
    on<ContainerRedEvent>((event, emit) {
      emit(ContainerRedColor(Colors.red));
    });

    on<ContainerYellowEvent>((event, emit) {
      emit(ContainerYellowColor(Colors.yellow));
    });
  }
}
