import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notepad_online/constants/constants.dart';
import 'package:notepad_online/modules/doc/bloc/docs_bloc.dart';
import 'package:notepad_online/modules/doc/bloc/docs_event.dart';
import 'package:notepad_online/modules/doc/bloc/docs_state.dart';
import 'package:notepad_online/modules/login/bloc/login_bloc.dart';
import 'package:notepad_online/modules/login/bloc/login_events.dart';
import 'package:notepad_online/modules/notepad/bloc/notepad_bloc.dart';
import 'package:notepad_online/modules/notepad/bloc/notepad_event.dart';
import 'package:notepad_online/modules/notepad/bloc/notepad_state.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pbgrpc.dart';
import 'package:notepad_online/routes/route_constants.dart';

import '../../../core/server_connection.dart';

class DocScreen extends StatefulWidget {
  const DocScreen({super.key});

  @override
  State<DocScreen> createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<FetchDocsBloc>().add(GetAllDocsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColorK,
        elevation: 0,
        actions: [
          BlocListener<NotepadBloc, NotepadState>(
            bloc: context.read<NotepadBloc>(),
            listener: (context, state) {
              if (state is NotepadCreatedSuccessState) {
                String id = state.document.docId;
                context.pushNamed('notepad', params: {'id': id});
              }
            },
            child: IconButton(
              onPressed: () async {
                context.read<NotepadBloc>().add(CreateNotepadEvent());
              },
              icon: Icon(
                Icons.add,
              ),
              color: blackColor87K,
            ),
          ),
          IconButton(
              onPressed: () {
                context.read<LoginBloc>().add(LogoutEvent());
              },
              icon: Icon(Icons.logout_sharp),
              color: blackColor87K)
        ],
      ),
      body: Column(
        children: [
          BlocConsumer<FetchDocsBloc, DocsState>(
            // buildWhen: (previous, current) {
            //   return current is AllDocsState;
            // },
            listener: (context, state) {
              // if (state is DocCreatedSuccessState) {
              //   Document doc = state.document;
              //   context.pushNamed('notepad', params: {'id': '${doc.docId}'});
              // }
              // // else
              //  if (state is DocCreationFailed) {
              //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //     content: Text('New Notepad creation failed'),
              //   ));
              // } else if (state is DocFetchingFailed) {
              //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //     content: Text('Documents fetching failed'),
              //   ));
              // }
            },
            builder: (context, state) {
              if (state is DocsFetchIntialState) {
                return Container();
              } else if (state is GettingDocsLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is AllDocsState) {
                List<Document> docs = state.docs;

                return Expanded(
                    child: ListView.builder(
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("${docs[index].title}"),
                            onTap: () {
                              context.pushNamed('notepad',
                                  params: {'id': docs[index].docId});
                            },
                          );
                        }));
              } else if (state is DocFetchingFailed) {
                return Center(
                  child: Text('Fetching docs failed'),
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
