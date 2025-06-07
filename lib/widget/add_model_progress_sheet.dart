import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nota/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:nota/cubit/add_note_cubit/add_note_state.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_cubit.dart';
import 'package:nota/model/note_model.dart';
import 'package:nota/widget/custome_text_feild.dart';
import 'package:nota/widget/customebottom.dart';

class AddModelProgressSheet extends StatelessWidget {
  AddModelProgressSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotefailuer) {
              print('failuer${state.error}');
            }
            if (state is AddNoteSucess) {
              BlocProvider.of<GetNoteCubit>(context).GetAllNote();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subtitle;
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomeTextFeild(
              text: "Add Note",
              Maxlines: 1,
              onsaved: (value) {
                title = value;
              },
            ),
            SizedBox(height: 10),
            CustomeTextFeild(
              text: "Add Title",
              Maxlines: 5,
              onsaved: (value) {
                subtitle = value;
              },
            ),
            SizedBox(height: 25),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return Customebottom(
                  isloading: state is AddNoteLoading ? true : false,
                  ontap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formatDate = DateFormat.yMd().format(currentDate);
                      var note = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        Date: formatDate,
                      );
                      BlocProvider.of<AddNoteCubit>(context).AddNote(note);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
