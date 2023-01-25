import 'package:flutter/material.dart';
import 'package:notes_app_with_bloc/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const CustomNoteItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
