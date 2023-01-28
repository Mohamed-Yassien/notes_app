import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_with_bloc/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        padding: const EdgeInsets.only(
          left: 16,
          top: 24,
          bottom: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Text(
                  'Learn Flutter With Mohamed Ali',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 22,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May 20,2022',
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(.4)),
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
      ),
    );
  }
}
