import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_bloc/cubits/add_note/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());
}
