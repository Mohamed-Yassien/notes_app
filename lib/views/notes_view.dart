import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_with_bloc/widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 45,
          right: 25,
          left: 25,
          bottom: 25,
        ),
        child: Column(
          children: const [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
