

import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

    String? title, subTitle;

  final formKey = GlobalKey<FormState>();

  final AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 32,
        ),
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
              onSave: (val) {
                title = val;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
              onSave: (val) {
                subTitle = val;
              },
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              title: 'add',
              onTab: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
