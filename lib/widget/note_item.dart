import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_cubit.dart';
import 'package:nota/model/note_model.dart';
import 'package:nota/screen/edit_view.dart';

class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.note});

  @override
  final NoteModel note;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditView()),
        );
      },
      child: Container(
        height: 200,
        width: double.infinity,
        padding: EdgeInsets.only(top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                    color: Colors.grey.withOpacity(.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<GetNoteCubit>(context).GetAllNote();
                },
                icon: Icon(Icons.delete_outline, color: Colors.black, size: 30),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                note.Date,
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
