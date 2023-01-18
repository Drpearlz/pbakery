import 'package:flutter/material.dart';

class TextFieldFormat extends StatelessWidget {
  const TextFieldFormat(
      {super.key,
      this.icon,
      this.suffixColor,
      this.text,
      this.obscureText = false,
      this.onPressedIcon});

  final IconData? icon;
  final Color? suffixColor;
  final String? text;
  final bool obscureText;
  final Function()? onPressedIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$text',
            style: const TextStyle(
                fontWeight: FontWeight.w800, color: Colors.black45)),
        TextFormField(
          cursorColor: Colors.black54,
          obscureText: obscureText,
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54)),
            suffixIcon: IconButton(
                // iconSize: 30,
                onPressed: onPressedIcon,
                icon: Icon(
                  icon,
                  color: suffixColor,
                )),
          ),
        ),
      ],
    );
  }
}
