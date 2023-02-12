import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notepad_online/modules/doc/bloc/docs_bloc.dart';
import 'package:notepad_online/modules/doc/data/repository/doc_repository.dart';
import 'package:notepad_online/modules/login/bloc/login_bloc.dart';
import 'package:notepad_online/modules/login/data/repository/google_auth_repository.dart';
import 'package:notepad_online/modules/login/data/repository/local_storage_repository.dart';
import 'package:notepad_online/modules/notepad/bloc/notepad_bloc.dart';
import 'package:notepad_online/modules/notepad/data/repository/notepad_repo.dart';
import 'package:notepad_online/routes/router_config.dart';
import './modules/login/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GoogleAuthRepo>(
            create: (BuildContext context) => GoogleAuthRepo(
                googleSignIn: GoogleSignIn(), storageRepo: LocalStorageRepo()),
          ),
          RepositoryProvider<DocRepository>(
            lazy: true,
            create: (BuildContext context) => DocRepository(),
          ),
          RepositoryProvider<NotepadRepository>(
            lazy: true,
            create: (BuildContext context) => const NotepadRepository(),
          ),
        ],
        child: MultiBlocProvider(
            providers: [
              BlocProvider<LoginBloc>(
                  create: (BuildContext context) => LoginBloc(
                      googleAuthRepo:
                          RepositoryProvider.of<GoogleAuthRepo>(context))),
              BlocProvider<NotepadBloc>(
                  lazy: true,
                  create: (BuildContext context) => NotepadBloc(
                      docRepository:
                          RepositoryProvider.of<NotepadRepository>(context))),
              BlocProvider<FetchDocsBloc>(
                  lazy: true,
                  create: (BuildContext context) => FetchDocsBloc(
                      docRepository:
                          RepositoryProvider.of<DocRepository>(context))),
            ],
            child: Builder(builder: (context) {
              return MaterialApp.router(
                routerConfig:
                    RouterConfiguration.routerConfig(context.read<LoginBloc>()),
                // routerDelegate: RouterConfiguration.getRoutes().routerDelegate,
                // routeInformationParser:
                //     RouterConfiguration.getRoutes().routeInformationParser,
                title: 'Online Notepad',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
              );
            })));
  }
}
