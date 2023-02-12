///
//  Generated code. Do not modify.
//  source: notepad_online.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'notepad_online.pb.dart' as $0;
export 'notepad_online.pb.dart';

class OnlineNotepadServiceClient extends $grpc.Client {
  static final _$loginUser = $grpc.ClientMethod<$0.UserData, $0.UserToken>(
      '/OnlineNotepadService/loginUser',
      ($0.UserData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserToken.fromBuffer(value));
  static final _$authenticateAndAuthorize =
      $grpc.ClientMethod<$0.Empty, $0.RequestStatus>(
          '/OnlineNotepadService/authenticateAndAuthorize',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RequestStatus.fromBuffer(value));
  static final _$createDocument =
      $grpc.ClientMethod<$0.DocCreationRequest, $0.Document>(
          '/OnlineNotepadService/createDocument',
          ($0.DocCreationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Document.fromBuffer(value));
  static final _$getDocuments = $grpc.ClientMethod<$0.Empty, $0.ListOfDocs>(
      '/OnlineNotepadService/getDocuments',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListOfDocs.fromBuffer(value));
  static final _$headerUpdate =
      $grpc.ClientMethod<$0.HeaderUpdate, $0.HeaderUpdate>(
          '/OnlineNotepadService/headerUpdate',
          ($0.HeaderUpdate value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.HeaderUpdate.fromBuffer(value));

  OnlineNotepadServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserToken> loginUser($0.UserData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.RequestStatus> authenticateAndAuthorize(
      $0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateAndAuthorize, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Document> createDocument(
      $0.DocCreationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDocument, request, options: options);
  }

  $grpc.ResponseStream<$0.ListOfDocs> getDocuments($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getDocuments, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.HeaderUpdate> headerUpdate($0.HeaderUpdate request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$headerUpdate, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class OnlineNotepadServiceBase extends $grpc.Service {
  $core.String get $name => 'OnlineNotepadService';

  OnlineNotepadServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserData, $0.UserToken>(
        'loginUser',
        loginUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserData.fromBuffer(value),
        ($0.UserToken value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.RequestStatus>(
        'authenticateAndAuthorize',
        authenticateAndAuthorize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.RequestStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DocCreationRequest, $0.Document>(
        'createDocument',
        createDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DocCreationRequest.fromBuffer(value),
        ($0.Document value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ListOfDocs>(
        'getDocuments',
        getDocuments_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ListOfDocs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HeaderUpdate, $0.HeaderUpdate>(
        'headerUpdate',
        headerUpdate_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.HeaderUpdate.fromBuffer(value),
        ($0.HeaderUpdate value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserToken> loginUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserData> request) async {
    return loginUser(call, await request);
  }

  $async.Future<$0.RequestStatus> authenticateAndAuthorize_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return authenticateAndAuthorize(call, await request);
  }

  $async.Future<$0.Document> createDocument_Pre($grpc.ServiceCall call,
      $async.Future<$0.DocCreationRequest> request) async {
    return createDocument(call, await request);
  }

  $async.Stream<$0.ListOfDocs> getDocuments_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getDocuments(call, await request);
  }

  $async.Stream<$0.HeaderUpdate> headerUpdate_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HeaderUpdate> request) async* {
    yield* headerUpdate(call, await request);
  }

  $async.Future<$0.UserToken> loginUser(
      $grpc.ServiceCall call, $0.UserData request);
  $async.Future<$0.RequestStatus> authenticateAndAuthorize(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Document> createDocument(
      $grpc.ServiceCall call, $0.DocCreationRequest request);
  $async.Stream<$0.ListOfDocs> getDocuments(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.HeaderUpdate> headerUpdate(
      $grpc.ServiceCall call, $0.HeaderUpdate request);
}
