import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_with_bloc/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app_with_bloc/cubits/add_note/add_note_states.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AddNoteForm();
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteStates>(
      listener: (context, state) {
        if (state is AddNoteErrorState) {
          print(state.errorMessage);
        } else if (state is AddNoteSuccessState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return const SingleChildScrollView(child: AddNoteForm());
      },
    );
  }
}
