import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_cubit.dart';
import 'package:nota/widget/note_appBar.dart';
import 'package:nota/widget/note_list_view_item.dart';

class NotaViewBody extends StatefulWidget {
  const NotaViewBody({super.key});

  @override
  State<NotaViewBody> createState() => _NotaViewBodyState();
}

class _NotaViewBodyState extends State<NotaViewBody> {
  @override
  void initState() {
    BlocProvider.of<GetNoteCubit>(context).GetAllNote();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        NoteAppbar(text: "Note", icon: Icons.search),
        SizedBox(height: 20),
        Expanded(child: NoteListViewItem()),
      ],
    );
  }
}
