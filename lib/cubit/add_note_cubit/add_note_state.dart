abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucess extends AddNoteState {}

class AddNotefailuer extends AddNoteState {
  final String error;
  AddNotefailuer(this.error);
}
