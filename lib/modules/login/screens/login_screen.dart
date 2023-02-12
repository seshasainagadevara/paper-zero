import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notepad_online/modules/login/bloc/login_bloc.dart';
import 'package:notepad_online/modules/login/bloc/login_events.dart';
import 'package:notepad_online/modules/login/bloc/login_states.dart';
import 'package:notepad_online/routes/route_constants.dart';

import '../../../constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    context.read<LoginBloc>().add(FetchUserEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccessfulState) {
              context.goNamed('docs');
            }
          },
          builder: (context, state) {
            if (state is LoginFailedState)
              return ElevatedButton.icon(
                onPressed: () {
                  context.read<LoginBloc>().add(RequestLoginEvent());
                },
                icon: Image.asset(
                  'assets/icons/gicon.png',
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
                label: Text('Signin with Google',
                    style: TextStyle(color: blackColor87K)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColorK,
                  minimumSize: const Size(
                    150,
                    50,
                  ),
                ),
              );
            else if (state is LoadingLoginState)
              return CircularProgressIndicator();

            return Container();
          },
        ),
      ),
    );
  }
}
