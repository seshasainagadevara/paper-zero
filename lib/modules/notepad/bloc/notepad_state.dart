import 'package:equatable/equatable.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pbgrpc.dart';

abstract class NotepadState extends Equatable {
  const NotepadState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CreateNotepadIntialState extends NotepadState {
  const CreateNotepadIntialState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NotepadCreationLoading extends NotepadState {
  const NotepadCreationLoading();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NotepadCreatedSuccessState extends NotepadState {
  const NotepadCreatedSuccessState({required this.document});
  final Document document;
  @override
  // TODO: implement props
  List<Object?> get props => [document];
}

class NotepadCreationFailed extends NotepadState {
  const NotepadCreationFailed();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UpdatedTitleState extends NotepadState {
  final HeaderUpdate headerUpdater;
  const UpdatedTitleState({required this.headerUpdater});
  @override
  // TODO: implement props
  List<Object?> get props => [headerUpdater];
}
