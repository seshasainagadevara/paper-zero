///
//  Generated code. Do not modify.
//  source: notepad_online.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $1;

import 'notepad_online.pbenum.dart';

export 'notepad_online.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class UserData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserData', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proPic', protoName: 'proPic')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  UserData._() : super();
  factory UserData({
    $core.String? name,
    $core.String? email,
    $core.String? proPic,
    $core.String? id,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (proPic != null) {
      _result.proPic = proPic;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory UserData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserData clone() => UserData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserData copyWith(void Function(UserData) updates) => super.copyWith((message) => updates(message as UserData)) as UserData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserData create() => UserData._();
  UserData createEmptyInstance() => create();
  static $pb.PbList<UserData> createRepeated() => $pb.PbList<UserData>();
  @$core.pragma('dart2js:noInline')
  static UserData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserData>(create);
  static UserData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get proPic => $_getSZ(2);
  @$pb.TagNumber(3)
  set proPic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProPic() => $_has(2);
  @$pb.TagNumber(3)
  void clearProPic() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get id => $_getSZ(3);
  @$pb.TagNumber(4)
  set id($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);
}

class UserToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserToken', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  UserToken._() : super();
  factory UserToken({
    $core.String? token,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory UserToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserToken clone() => UserToken()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserToken copyWith(void Function(UserToken) updates) => super.copyWith((message) => updates(message as UserToken)) as UserToken; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserToken create() => UserToken._();
  UserToken createEmptyInstance() => create();
  static $pb.PbList<UserToken> createRepeated() => $pb.PbList<UserToken>();
  @$core.pragma('dart2js:noInline')
  static UserToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserToken>(create);
  static UserToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class RequestStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestStatus', createEmptyInstance: create)
    ..aOM<UserData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userData', protoName: 'userData', subBuilder: UserData.create)
    ..aOM<UserToken>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', subBuilder: UserToken.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..e<Status>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusType', $pb.PbFieldType.OE, protoName: 'statusType', defaultOrMaker: Status.UNAUTHORIZED, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  RequestStatus._() : super();
  factory RequestStatus({
    UserData? userData,
    UserToken? token,
    $core.String? message,
    Status? statusType,
  }) {
    final _result = create();
    if (userData != null) {
      _result.userData = userData;
    }
    if (token != null) {
      _result.token = token;
    }
    if (message != null) {
      _result.message = message;
    }
    if (statusType != null) {
      _result.statusType = statusType;
    }
    return _result;
  }
  factory RequestStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestStatus clone() => RequestStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestStatus copyWith(void Function(RequestStatus) updates) => super.copyWith((message) => updates(message as RequestStatus)) as RequestStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestStatus create() => RequestStatus._();
  RequestStatus createEmptyInstance() => create();
  static $pb.PbList<RequestStatus> createRepeated() => $pb.PbList<RequestStatus>();
  @$core.pragma('dart2js:noInline')
  static RequestStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestStatus>(create);
  static RequestStatus? _defaultInstance;

  @$pb.TagNumber(1)
  UserData get userData => $_getN(0);
  @$pb.TagNumber(1)
  set userData(UserData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserData() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserData() => clearField(1);
  @$pb.TagNumber(1)
  UserData ensureUserData() => $_ensure(0);

  @$pb.TagNumber(2)
  UserToken get token => $_getN(1);
  @$pb.TagNumber(2)
  set token(UserToken v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
  @$pb.TagNumber(2)
  UserToken ensureToken() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  Status get statusType => $_getN(3);
  @$pb.TagNumber(4)
  set statusType(Status v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatusType() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatusType() => clearField(4);
}

class Document extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Document', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'docId', protoName: 'docId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModifiedAt', protoName: 'lastModifiedAt')
    ..pc<$1.Any>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.PM, subBuilder: $1.Any.create)
    ..hasRequiredFields = false
  ;

  Document._() : super();
  factory Document({
    $core.String? userId,
    $core.String? docId,
    $core.String? title,
    $core.String? createdAt,
    $core.String? lastModifiedAt,
    $core.Iterable<$1.Any>? content,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (docId != null) {
      _result.docId = docId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (lastModifiedAt != null) {
      _result.lastModifiedAt = lastModifiedAt;
    }
    if (content != null) {
      _result.content.addAll(content);
    }
    return _result;
  }
  factory Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Document clone() => Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Document copyWith(void Function(Document) updates) => super.copyWith((message) => updates(message as Document)) as Document; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  @$core.pragma('dart2js:noInline')
  static Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Document>(create);
  static Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get docId => $_getSZ(1);
  @$pb.TagNumber(2)
  set docId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get createdAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastModifiedAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set lastModifiedAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastModifiedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastModifiedAt() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$1.Any> get content => $_getList(5);
}

class DocCreationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DocCreationRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..hasRequiredFields = false
  ;

  DocCreationRequest._() : super();
  factory DocCreationRequest({
    $core.String? createdAt,
  }) {
    final _result = create();
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory DocCreationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocCreationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocCreationRequest clone() => DocCreationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocCreationRequest copyWith(void Function(DocCreationRequest) updates) => super.copyWith((message) => updates(message as DocCreationRequest)) as DocCreationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocCreationRequest create() => DocCreationRequest._();
  DocCreationRequest createEmptyInstance() => create();
  static $pb.PbList<DocCreationRequest> createRepeated() => $pb.PbList<DocCreationRequest>();
  @$core.pragma('dart2js:noInline')
  static DocCreationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocCreationRequest>(create);
  static DocCreationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get createdAt => $_getSZ(0);
  @$pb.TagNumber(1)
  set createdAt($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedAt() => clearField(1);
}

class ListOfDocs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOfDocs', createEmptyInstance: create)
    ..pc<Document>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'docs', $pb.PbFieldType.PM, subBuilder: Document.create)
    ..hasRequiredFields = false
  ;

  ListOfDocs._() : super();
  factory ListOfDocs({
    $core.Iterable<Document>? docs,
  }) {
    final _result = create();
    if (docs != null) {
      _result.docs.addAll(docs);
    }
    return _result;
  }
  factory ListOfDocs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOfDocs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOfDocs clone() => ListOfDocs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOfDocs copyWith(void Function(ListOfDocs) updates) => super.copyWith((message) => updates(message as ListOfDocs)) as ListOfDocs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOfDocs create() => ListOfDocs._();
  ListOfDocs createEmptyInstance() => create();
  static $pb.PbList<ListOfDocs> createRepeated() => $pb.PbList<ListOfDocs>();
  @$core.pragma('dart2js:noInline')
  static ListOfDocs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOfDocs>(create);
  static ListOfDocs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Document> get docs => $_getList(0);
}

class HeaderUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HeaderUpdate', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modifiedAt', protoName: 'modifiedAt')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'docId', protoName: 'docId')
    ..hasRequiredFields = false
  ;

  HeaderUpdate._() : super();
  factory HeaderUpdate({
    $core.String? title,
    $core.String? modifiedAt,
    $core.String? docId,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (modifiedAt != null) {
      _result.modifiedAt = modifiedAt;
    }
    if (docId != null) {
      _result.docId = docId;
    }
    return _result;
  }
  factory HeaderUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeaderUpdate clone() => HeaderUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeaderUpdate copyWith(void Function(HeaderUpdate) updates) => super.copyWith((message) => updates(message as HeaderUpdate)) as HeaderUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeaderUpdate create() => HeaderUpdate._();
  HeaderUpdate createEmptyInstance() => create();
  static $pb.PbList<HeaderUpdate> createRepeated() => $pb.PbList<HeaderUpdate>();
  @$core.pragma('dart2js:noInline')
  static HeaderUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeaderUpdate>(create);
  static HeaderUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get modifiedAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set modifiedAt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModifiedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearModifiedAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get docId => $_getSZ(2);
  @$pb.TagNumber(3)
  set docId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocId() => clearField(3);
}

