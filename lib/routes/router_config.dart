import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notepad_online/modules/login/bloc/login_bloc.dart';
import 'package:notepad_online/modules/login/bloc/login_states.dart';
import 'package:notepad_online/modules/login/screens/login_screen.dart';
import 'package:notepad_online/modules/notepad/screens/notepad.dart';
import 'package:notepad_online/modules/unknown/screens/unknown_screen.dart';
import 'package:notepad_online/routes/route_constants.dart';

import '../modules/doc/screens/doc_screen.dart';
import '../modules/login/bloc/login_events.dart';

class RouterConfiguration {
  static routerConfig(LoginBloc bloc) => GoRouter(
        initialLocation: RouterConstants.initial,
        routes: [
          GoRoute(
            path: RouterConstants.initial,
            name: 'intial',
            builder: (context, state) {
              return LoginScreen(
                key: state.pageKey,
              );
            },
          ),
          GoRoute(
              path: RouterConstants.doc,
              name: 'docs',
              builder: (context, state) {
                return DocScreen();
              },
              routes: [
                GoRoute(
                  path: RouterConstants.notepad_subroute,
                  name: 'notepad',
                  builder: (context, state) {
                    return Notepad(
                      docId: state.params['id'],
                    );
                  },
                )
              ]),
        ],
        errorBuilder: (context, state) {
          return UnknownScreen(
            key: state.pageKey,
          );
        },
        refreshListenable: bloc,
        redirect: (context, state) {
          // context.watch<LoginBloc>();

          if ((bloc.state is LoginFailedState) &&
              state.path == RouterConstants.initial) return null;
          if (bloc.state is LoginFailedState) return RouterConstants.initial;
          // if (bloc.state is LoginSuccessfulState) return RouterConstants.doc;
          if (bloc.state is LogoutState) return RouterConstants.initial;
        },
        debugLogDiagnostics: true,
      );
}
