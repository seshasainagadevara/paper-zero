import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:notepad_online/modules/login/data/repository/local_storage_repository.dart';

import '../../../../constants/constants.dart';

class ClientGrpcInterceptor implements ClientInterceptor {
  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker) {
    final LocalStorageRepo localStorageRepo = LocalStorageRepo();

    String? token = localStorageRepo.token;

    if (token != null && token.isNotEmpty) {
      options = options.mergedWith(CallOptions(
          // timeout: Duration(seconds: 10),
          compression: const GzipCodec(),
          metadata: {tokenKey: token}));
    }

    return invoker(method, requests, options);
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    final LocalStorageRepo localStorageRepo = LocalStorageRepo();

    String? token = localStorageRepo.token;

    if (token != null && token.isNotEmpty) {
      options = options.mergedWith(CallOptions(
          // timeout: Duration(seconds: 10),
          compression: const GzipCodec(),
          metadata: {tokenKey: token}));
    }

    debugPrint(
        "${request.toString()} ,  ${method.path}, ${options.metadata.toString()}");

    return invoker(method, request, options);
  }
}
