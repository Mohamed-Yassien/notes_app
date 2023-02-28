import 'package:flutter/material.dart';

import '../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, required this.title, this.onTab,
  }) : super(key: key);

  final String title;
  final void Function()? onTab ;  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        color: kPrimaryColor,
        onPressed: onTab,
        child:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
