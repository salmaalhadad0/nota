import 'package:flutter/material.dart';
import 'package:nota/widget/nota_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: NotaViewBody(),
      ),
    );
  }
}
