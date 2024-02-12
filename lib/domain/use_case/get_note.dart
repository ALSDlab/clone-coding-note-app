import 'package:clone_coding_note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class GetNote {
  final NoteRepository repository;

  GetNote(this.repository);

  Future<Note?> call(int id) async {
    return await repository.getNoteById(id);
  }
}
