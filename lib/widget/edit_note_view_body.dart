import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_cubit.dart';
import 'package:nota/model/note_model.dart';
import 'package:nota/widget/custome_text_feild.dart';
import 'package:nota/widget/customebottom.dart';
import 'package:nota/widget/note_appBar.dart';

class EditNoteViewBody extends StatefulWidget {
  EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(height: 50),
          NoteAppbar(
            text: "Edit",
            icon: Icons.edit,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<GetNoteCubit>(context).GetAllNote();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20),
          CustomeTextFeild(
            text: "Edit Note",
            onChanged: (value) {
              title = value;
            },
            Maxlines: 1,
          ),
          SizedBox(height: 10),
          CustomeTextFeild(
            text: "Edit Title",
            onChanged: (value) {
              subtitle = value;
            },
            Maxlines: 5,
          ),
          SizedBox(height: 200),
          Customebottom(),
        ],
      ),
    );
  }
}
