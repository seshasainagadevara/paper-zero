import 'package:equatable/equatable.dart';

abstract class DocsEvent extends Equatable {
  const DocsEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetAllDocsEvent extends DocsEvent {
  const GetAllDocsEvent();
  @override
  List<Object?> get props => [];
}
