import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pbgrpc.dart';

import '../../../../core/server_connection.dart';

class NotepadRepository {
  const NotepadRepository();

  Future<Document?> createDoc() async {
    try {
      String time = DateTime.now().millisecondsSinceEpoch.toString();
      Document? doc = await GrpcConnection.clientStub
          .createDocument(DocCreationRequest(createdAt: time));
      debugPrint("${doc}fdsfd");
      return doc;
    } catch (error) {
      debugPrint("error creating document: ${error}");
    }
  }

  Stream<HeaderUpdate> updateTitle(String title, String docId) async* {
    final String modifiedAt = DateTime.now().millisecondsSinceEpoch.toString();
    ResponseStream<HeaderUpdate> stream = GrpcConnection.clientStub
        .headerUpdate(
            HeaderUpdate(title: title, docId: docId, modifiedAt: modifiedAt));
    yield* stream.asBroadcastStream();
  }
}
