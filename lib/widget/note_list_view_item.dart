import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_cubit.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_state.dart';
import 'package:nota/model/note_model.dart';
import 'package:nota/widget/note_item.dart';

class NoteListViewItem extends StatelessWidget {
  const NoteListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNoteCubit, GetNoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<GetNoteCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, item) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: NoteItem(note: notes[item]),
            );
          },
        );
      },
    );
  }
}
