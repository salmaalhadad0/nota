import 'package:flutter/material.dart';
import 'package:nota/widget/note_item.dart';

class NoteListViewItem extends StatelessWidget {
  const NoteListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: NoteItem(),
        );
      },
    );
  }
}
