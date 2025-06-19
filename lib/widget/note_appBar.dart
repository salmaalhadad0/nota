import 'package:flutter/material.dart';

class NoteAppbar extends StatelessWidget {
  NoteAppbar({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  @override
  String text;
  IconData? icon;
  final void Function()? onPressed;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Spacer(),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white.withOpacity(.1),
          ),
          child: GestureDetector(onTap: onPressed, child: Icon(icon)),
        ),
      ],
    );
  }
}
