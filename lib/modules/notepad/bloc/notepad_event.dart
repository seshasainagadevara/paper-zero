import 'package:equatable/equatable.dart';

abstract class NotepadEvent extends Equatable {
  const NotepadEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CreateNotepadEvent extends NotepadEvent {
  const CreateNotepadEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UpdateTitleEvent extends NotepadEvent {
  final String docId;
  final String title;
  const UpdateTitleEvent({required this.docId, required this.title});
  @override
  // TODO: implement props
  List<Object?> get props => [docId, title];
}
