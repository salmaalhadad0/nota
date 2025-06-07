import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:nota/cubit/add_note_cubit/get_note_cubit/get_note_cubit.dart';
import 'package:nota/model/note_model.dart';

import 'package:nota/screen/not_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('note box');

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Tagesschrift-Regular.ttf',
        ),
        home: NoteView(),
      ),
    );
  }
}
