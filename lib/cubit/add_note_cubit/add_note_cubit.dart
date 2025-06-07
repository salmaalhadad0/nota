import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nota/cubit/add_note_cubit/add_note_state.dart';
import 'package:nota/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) async {
    try {
      emit(AddNoteLoading());
      var notebox = Hive.box<NoteModel>('note box');
      await notebox.add(note);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNotefailuer(e.toString()));
    }
  }
}
