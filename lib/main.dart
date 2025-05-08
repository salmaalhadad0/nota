import 'package:flutter/material.dart';
import 'package:nota/screen/not_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Tagesschrift-Regular.ttf',
      ),
      home: NoteView(),
    );
  }
}
