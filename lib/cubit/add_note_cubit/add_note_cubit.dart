import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nota/cubit/add_note_cubit/add_note_state.dart';
import 'package:nota/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) async {
    try {
      var notebox = Hive.box('note box');
      await notebox.add(note);
    } catch (e) {
      AddNotefailuer(e.toString());
    }
  }
}
