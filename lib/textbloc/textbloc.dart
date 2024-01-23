import 'package:counterbloc/textbloc/text_event.dart';
import 'package:counterbloc/textbloc/text_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextBloc extends Bloc<TextEvent, TextState> {
  TextBloc() : super(InitialTextState('press to fetch')) {
    on<UpdateTextEvent>(_updateTextEvent);
  }

  void _updateTextEvent(UpdateTextEvent event, Emitter<TextState> emit) {
    emit(UpdateTextState(event.getstring));
  }
}
