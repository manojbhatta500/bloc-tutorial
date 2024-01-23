abstract class TextState {
  String textdata = '';

  TextState({required this.textdata});
}

class InitialTextState extends TextState {
  InitialTextState(String gettext) : super(textdata: gettext);
}

class UpdateTextState extends TextState {
  UpdateTextState(String gettext) : super(textdata: gettext);
}
