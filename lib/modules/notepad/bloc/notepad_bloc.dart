import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_online/constants/constants.dart';
import 'package:notepad_online/modules/doc/bloc/docs_bloc.dart';
import 'package:notepad_online/modules/login/bloc/login_bloc.dart';

import '../../../protobufs/src/generated/notepad_online.pbgrpc.dart';
import '../data/repository/notepad_repo.dart';
import 'notepad_event.dart';
import 'notepad_state.dart';

class NotepadBloc extends Bloc<NotepadEvent, NotepadState> {
  final NotepadRepository docRepository;
  NotepadBloc({
    required this.docRepository,
  }) : super(CreateNotepadIntialState()) {
    on<CreateNotepadEvent>((event, emit) async {
      emit(NotepadCreationLoading());
      Document? doc = await docRepository.createDoc();
      debugPrint("${doc}fdsfd");
      if (doc != null) {
        emit(NotepadCreatedSuccessState(document: doc));
      } else {
        emit(NotepadCreationFailed());
      }
    });
    on<UpdateTitleEvent>((event, emit) async {
      Stream<HeaderUpdate> doc =
          docRepository.updateTitle(event.title, event.docId);

      debugPrint("${doc}fdsfd");
      return emit.forEach(
        doc,
        onData: (data) {
          return UpdatedTitleState(headerUpdater: data);
        },
      );
    });
  }
}
