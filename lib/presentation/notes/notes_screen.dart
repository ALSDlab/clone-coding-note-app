import 'package:clone_coding_note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:clone_coding_note_app/presentation/notes/notes_event.dart';
import 'package:clone_coding_note_app/presentation/notes/notes_view_model.dart';
import 'package:clone_coding_note_app/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/model/note.dart';
import 'components/note_item.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;
    return Scaffold(
      backgroundColor: darkGray,
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
        onPressed: () async {
          bool? isSaved = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddEditNoteScreen()));
          if (isSaved != null && isSaved){
            viewModel.onEvent(const NotesEvent.loadNotes());
          }
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: state.notes
            .map(
              (note) => NoteItem(
                note: note
              ),
            )
            .toList(),
      ),
    );
  }
}
