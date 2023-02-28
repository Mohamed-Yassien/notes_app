import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_with_bloc/widgets/custom_app_bar.dart';
import 'package:notes_app_with_bloc/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 45,
        right: 25,
        left: 25,
        bottom: 25,
      ),
      child: Column(
        children: const [
          CustomAppBar(
            title: 'Notes',
            icon: FontAwesomeIcons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
