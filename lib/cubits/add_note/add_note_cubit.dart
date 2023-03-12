import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_with_bloc/constant.dart';
import 'package:notes_app_with_bloc/cubits/add_note/add_note_states.dart';
import 'package:notes_app_with_bloc/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote({required NoteModel noteModel}) async {
    emit(AddNoteLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(noteModel);
      emit(AddNoteSuccessState());
    } catch (e) {
      print(e.toString());
      emit(AddNoteErrorState(e.toString()));
    }
  }
}
