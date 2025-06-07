import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_state.dart';
import 'package:nota/model/note_model.dart';

class GetNoteCubit extends Cubit<GetNoteState> {
  GetNoteCubit() : super(GetNoteInitial());
  List<NoteModel>? notes;
  GetAllNote() {
    var notebox = Hive.box<NoteModel>('note box');
    notes = notebox.values.toList();
    emit(GetNoteSucess(notes!));
  }
}
