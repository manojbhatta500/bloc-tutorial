abstract class TextEvent {}

class UpdateTextEvent extends TextEvent {
  String getstring;
  UpdateTextEvent({required this.getstring});
}
