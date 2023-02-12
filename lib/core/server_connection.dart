import 'package:grpc/grpc.dart';
import 'package:notepad_online/protobufs/src/generated/notepad_online.pbgrpc.dart';

import '../modules/login/data/repository/client_interceptor_grpc.dart';

class GrpcConnection {
  static final clientChannel = ClientChannel(
    '10.0.2.2',
    port: 5000,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );
  static final clientStub = OnlineNotepadServiceClient(clientChannel,
      interceptors: [ClientGrpcInterceptor()]);

  // Future<void> shutdownChannel() async {
  //   await clientChannel.shutdown();
  // }
}
