import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class RequestLoginEvent extends LoginEvent {
  const RequestLoginEvent();
  @override
  List<Object?> get props => [];
}

class FetchUserEvent extends LoginEvent {
  const FetchUserEvent();
  @override
  List<Object?> get props => [];
}

class LogoutEvent extends LoginEvent {
  const LogoutEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
