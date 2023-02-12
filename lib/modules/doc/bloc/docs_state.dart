import 'package:equatable/equatable.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pbgrpc.dart';

abstract class DocsState extends Equatable {
  const DocsState();
  @override
  List<Object?> get props => [];
}

class AllDocsState extends DocsState {
  const AllDocsState({required this.docs});
  final List<Document> docs;
  @override
  List<Object?> get props => [docs];
}

class GettingDocsLoading extends DocsState {
  const GettingDocsLoading();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class DocFetchingFailed extends DocsState {
  const DocFetchingFailed();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class DocsFetchIntialState extends DocsState {
  const DocsFetchIntialState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
