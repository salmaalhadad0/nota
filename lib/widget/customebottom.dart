import 'package:flutter/material.dart';

class Customebottom extends StatelessWidget {
  const Customebottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple,
      ),
      child: Center(
        child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
