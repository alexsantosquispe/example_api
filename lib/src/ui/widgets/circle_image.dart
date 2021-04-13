import 'package:flutter/material.dart';
import 'package:placeholder_api/src/ui/constants/base_colors.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key key, this.size, this.label}) : super(key: key);

  final double size;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: accent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
