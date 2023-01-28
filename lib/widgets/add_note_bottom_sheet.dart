import 'package:flutter/material.dart';
import 'package:notes_app_with_bloc/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 32,
      ),
      child: Column(
        children: const [
          CustomTextField(),
        ],
      ),
    );
  }
}
