import 'package:flutter/material.dart';
import 'package:notes_app_with_bloc/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.maxLines = 1,
    this.onSave,
  }) : super(key: key);

  final String hint;
  final int maxLines;
  final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hint,
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
