import 'package:clone_coding_note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class GetNoteUseCase {
  final NoteRepository repository;

  GetNoteUseCase(this.repository);

  Future<Note?> call(int id) async {
    return await repository.getNoteById(id);
  }
}
