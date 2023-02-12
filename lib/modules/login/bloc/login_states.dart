import 'package:equatable/equatable.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pb.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoadingLoginState extends LoginState {
  const LoadingLoginState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InitialLoginState extends LoginState {
  const InitialLoginState();
  @override
  List<Object?> get props => [];
}

class LoginSuccessfulState extends LoginState {
  const LoginSuccessfulState(this.userData);
  final UserData userData;
  @override
  // TODO: implement props
  List<Object?> get props => [userData];
}

class LoginFailedState extends LoginState {
  const LoginFailedState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LogoutState extends LoginState {
  const LogoutState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
