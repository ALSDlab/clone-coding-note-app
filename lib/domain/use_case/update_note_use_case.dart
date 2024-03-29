import 'package:clone_coding_note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class UpdateNoteUseCase {
  final NoteRepository repository;

  UpdateNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.updateNote(note);
  }
}
