import 'package:nota/model/note_model.dart';

abstract class GetNoteState {}

class GetNoteInitial extends GetNoteState {}

class GetNoteLoading extends GetNoteState {}

class GetNoteSucess extends GetNoteState {
  final List<NoteModel> notes;
  GetNoteSucess(this.notes);
}

class GetNotefailuer extends GetNoteState {
  final String error;
  GetNotefailuer(this.error);
}
