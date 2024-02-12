import 'package:clone_coding_note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:clone_coding_note_app/ui/colors.dart';
import 'package:flutter/material.dart';

import '../../domain/model/note.dart';
import 'components/note_item.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Note',
          style: TextStyle(fontSize: 32),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
        ],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => const AddEditNoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          NoteItem(
            note: Note(
              title: 'title 1',
              content: 'content 1',
              color: wisteria.value,
              timestamp: 1,
            ),
          ),
          NoteItem(
            note: Note(
              title: 'title 2',
              content: 'content 2',
              color: skyBlue.value,
              timestamp: 2,
            ),
          ),
        ],
      ),
    );
  }
}
