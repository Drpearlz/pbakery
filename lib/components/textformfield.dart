import 'package:flutter/material.dart';

class TextFieldFormat extends StatelessWidget {
  const TextFieldFormat({
    super.key,
    this.icon,
    this.color,
    this.text,
    this.obscureText = false,
  });

  final IconData? icon;
  final Color? color;
  final String? text;
  final bool obscureText;

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
                  borderSide:
                      BorderSide(color: Color.fromARGB(137, 250, 140, 140))),
              suffixIcon: Icon(
                icon,
                color: color,
              )),
        ),
      ],
    );
  }
}
