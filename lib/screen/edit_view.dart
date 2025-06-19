import 'package:flutter/material.dart';
import 'package:nota/model/note_model.dart';

import 'package:nota/widget/edit_note_view_body.dart';

class EditView extends StatelessWidget {
  EditView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody(note: note));
  }
}
