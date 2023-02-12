import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_online/modules/login/bloc/login_events.dart';
import 'package:notepad_online/modules/login/bloc/login_states.dart';
import 'package:notepad_online/modules/login/data/repository/google_auth_repository.dart';
import 'package:notepad_online/modules/login/data/repository/local_storage_repository.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pb.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> with ChangeNotifier {
  final GoogleAuthRepo googleAuthRepo;
  LoginBloc({required this.googleAuthRepo}) : super(InitialLoginState()) {
    on<RequestLoginEvent>((event, emit) async {
      emit(LoadingLoginState());
      UserData? data = await googleAuthRepo.signInWithGoogle();
      if (data != null) {
        emit(LoginSuccessfulState(data));
      } else {
        emit(LoginFailedState());
      }
      notifyListeners();
    });

    on<FetchUserEvent>((event, emit) async {
      emit(LoadingLoginState());
      await LocalStorageRepo().load();
      if (LocalStorageRepo().token != null) {
        UserData? data = await googleAuthRepo.fetchUser();
        if (data != null) {
          emit(LoginSuccessfulState(data));
        } else {
          emit(LoginFailedState());
        }
      } else {
        emit(LoginFailedState());
      }
      notifyListeners();
    });

    on<LogoutEvent>((event, emit) async {
      bool? isLogout = await googleAuthRepo.signOut();
      if (isLogout != null && isLogout) {
        emit(LogoutState());
        notifyListeners();
      } else {
        emit(LoginFailedState());
        notifyListeners();
      }
    });
  }
}
