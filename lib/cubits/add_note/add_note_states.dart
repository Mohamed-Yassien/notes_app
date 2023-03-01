abstract class AddNoteStates {}

class AddNoteInitialState extends AddNoteStates {}

class AddNoteLoadingState extends AddNoteStates {}

class AddNoteSuccessState extends AddNoteStates {}

class AddNoteErrorState extends AddNoteStates {
  final String errorMessage;

  AddNoteErrorState(this.errorMessage);
}
