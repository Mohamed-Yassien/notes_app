import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[700],
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.search,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
