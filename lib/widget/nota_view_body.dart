import 'package:flutter/material.dart';
import 'package:nota/widget/note_appBar.dart';
import 'package:nota/widget/note_list_view_item.dart';

class NotaViewBody extends StatelessWidget {
  const NotaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        NoteAppbar(),
        SizedBox(height: 20),
        Expanded(child: NoteListViewItem()),
      ],
    );
  }
}
