import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pbgrpc.dart';

import '../../../../core/server_connection.dart';

class DocRepository {
  Stream<ListOfDocs> getDocs() async* {
    try {
      final StreamController<ListOfDocs> st =
          StreamController<ListOfDocs>.broadcast();

      //  .listen((value) {
      //     st.sink.add(value);
      //   });
      GrpcConnection.clientStub.getDocuments(Empty())
        ..listen((event) {
          st.sink.add(event);
        });
      yield* st.stream;
    } catch (error) {
      debugPrint("error at getting logs:${error}");
    }
  }
}
