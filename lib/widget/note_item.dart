import 'package:flutter/material.dart';
import 'package:nota/screen/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
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
                "flutter task1",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "build ui with salma",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_outline, color: Colors.black, size: 30),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                "16/3/2025",
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
