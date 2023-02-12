import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as qll;
import 'package:notepad_online/constants/constants.dart';
import 'package:notepad_online/modules/notepad/bloc/notepad_bloc.dart';
import 'package:notepad_online/modules/notepad/bloc/notepad_event.dart';
import 'package:notepad_online/modules/notepad/bloc/notepad_state.dart';

import '../../doc/bloc/docs_bloc.dart';
import '../../doc/bloc/docs_event.dart';

class Notepad extends StatefulWidget {
  Notepad({super.key, required this.docId});
  final String? docId;

  @override
  State<Notepad> createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  final TextEditingController _textEditingController =
      TextEditingController(text: "Untitled doc");
  final qll.QuillController _qllCtlr = qll.QuillController.basic();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // toolbarHeight: 100,
        backgroundColor: whiteColorK,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 20,
                    child: Icon(
                      Icons.notes_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: BlocBuilder<NotepadBloc, NotepadState>(
                    buildWhen: (previous, current) {
                      return current is UpdatedTitleState;
                    },
                    builder: (context, state) {
                      if (state is UpdatedTitleState) {
                        if (state.headerUpdater.hasRequiredFields() &&
                            state.headerUpdater.docId == widget.docId) {
                          _textEditingController.text =
                              state.headerUpdater.title;
                        }
                      }
                      return TextField(
                        controller: _textEditingController,
                        onSubmitted: (value) {
                          if (value.isNotEmpty && widget.docId != null) {
                            context.read<NotepadBloc>().add(UpdateTitleEvent(
                                docId: widget.docId!, title: value));
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.green)),
                            contentPadding: EdgeInsets.only(left: 10)),
                      );
                    },
                  ))
                ],
              ),
            )),
        iconTheme: const IconThemeData(color: blackColor87K),
        title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '${appName}',
              style: TextStyle(color: blackColor87K),
            )),
        elevation: 3.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            qll.QuillToolbar.basic(
              controller: _qllCtlr,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Card(
              elevation: 5.0,
              color: whiteColorK,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: qll.QuillEditor.basic(
                    controller: _qllCtlr, readOnly: false),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
