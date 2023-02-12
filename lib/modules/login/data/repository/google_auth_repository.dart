import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/service_api.dart';
import 'package:notepad_online/core/server_connection.dart';
import 'package:notepad_online/modules/login/bloc/login_states.dart';
import 'package:notepad_online/modules/login/data/repository/local_storage_repository.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pb.dart';
import 'package:protobuf/protobuf.dart';
import '../../../../constants/constants.dart';

class GoogleAuthRepo {
  final GoogleSignIn _googleSignIn;
  final LocalStorageRepo _localStorageRepo;
  GoogleAuthRepo(
      {required GoogleSignIn googleSignIn,
      required LocalStorageRepo storageRepo})
      : _googleSignIn = googleSignIn,
        _localStorageRepo = storageRepo {}

  Future<bool?> isSignedIn() async {
    try {
      return await _googleSignIn.isSignedIn();
    } catch (e) {
      debugPrint("Please check internet connection ${e}");
      return null;
    }
  }

  Future<UserData?> signInWithGoogle() async {
    try {
      // bool? isSignIn = await isSignedIn();
      // if (isSignIn != null && !isSignIn) {
      //   GoogleSignInAccount? account = await _googleSignIn.signIn();
      //   if (account != null) {
      final userData = UserData(
          name: 'seshasai', //.displayName ?? '',
          email: 'nvsseshasai@gmail.com', //account.email??'',
          proPic: ''); //account.photoUrl??''
      final response = await GrpcConnection.clientStub
          .loginUser(userData, //account.photoUrl ?? ''),
              options: CallOptions(
                compression: const GzipCodec(),
              ));

      debugPrint("${response.token} is response");
      // debugPrint(account.displayName);
      // }
      // }
      if (response != null && response.token.isNotEmpty) {
        await _localStorageRepo.setToken(response.token);
        return userData;
      }
    } catch (e) {
      debugPrint('Google Signin Error, please try later${e}');
    }
  }

  Future<bool?> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _localStorageRepo.setToken('');
      return true;
    } catch (er) {
      debugPrint("Signout error, please check connection");
    }
  }

  // Future<String?> checkIsLoggedIn() async {
  //   String? token = await _localStorageRepo.getToken();
  //   if (token != null && token.isNotEmpty) {
  //     return token;
  //   }
  // }

  Future<UserData?> fetchUser() async {
    try {
      final response =
          await GrpcConnection.clientStub.authenticateAndAuthorize(Empty());
      log('${response}fdsfs');
      if (response.statusType == Status.SERVER_ERROR) {
      } else if (response.statusType == Status.SUCCESS) {
        return response.userData;
      }
    } catch (er) {
      debugPrint("${er},Signout erro, please check connection");
    }
  }
}
