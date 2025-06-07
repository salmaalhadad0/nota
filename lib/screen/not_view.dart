import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_cubit.dart';
import 'package:nota/widget/add_model_progress_sheet.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return AddModelProgressSheet();
            },
          );
        },
        child: Icon(Icons.add, size: 30),
      ),
    );
  }
}
