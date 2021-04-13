import 'package:flutter/material.dart';
import 'package:placeholder_api/src/ui/constants/base_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    @required this.placeholder,
    @required this.textFieldController,
    this.obscureText = false,
  }) : super(key: key);

  final String placeholder;
  final bool obscureText;
  final TextEditingController textFieldController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      decoration: BoxDecoration(
        color: inputBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: accent,
        obscureText: obscureText,
        controller: textFieldController,
        style: const TextStyle(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          // border: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
