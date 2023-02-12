import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_online/modules/doc/bloc/docs_event.dart';
import 'package:notepad_online/modules/doc/bloc/docs_state.dart';
import 'package:notepad_online/modules/doc/data/repository/doc_repository.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pbgrpc.dart';

class FetchDocsBloc extends Bloc<DocsEvent, DocsState> {
  final DocRepository docRepository;
  FetchDocsBloc({
    required this.docRepository,
  }) : super(DocsFetchIntialState()) {
    on<GetAllDocsEvent>((event, emit) async {
      emit(GettingDocsLoading());

      return emit.forEach<ListOfDocs>(
        docRepository.getDocs().asBroadcastStream()..forEach(print),
        onData: (data) {
          return AllDocsState(docs: data.docs);
        },
        onError: (error, stackTrace) {
          return DocFetchingFailed();
        },
      );
    });
  }
}
