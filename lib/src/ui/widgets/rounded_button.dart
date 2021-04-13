import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:placeholder_api/src/ui/constants/base_colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.title,
    @required this.onPressHandler,
  }) : super(key: key);

  final String title;
  final Function onPressHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressHandler,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: accent,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.5),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: lightText,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
