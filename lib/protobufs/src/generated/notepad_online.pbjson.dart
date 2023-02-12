///
//  Generated code. Do not modify.
//  source: notepad_online.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'UNAUTHORIZED', '2': 0},
    const {'1': 'SERVER_ERROR', '2': 1},
    const {'1': 'SUCCESS', '2': 2},
    const {'1': 'UNATHENTICATED', '2': 3},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSEAoMVU5BVVRIT1JJWkVEEAASEAoMU0VSVkVSX0VSUk9SEAESCwoHU1VDQ0VTUxACEhIKDlVOQVRIRU5USUNBVEVEEAM=');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use userDataDescriptor instead')
const UserData$json = const {
  '1': 'UserData',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'proPic', '3': 3, '4': 1, '5': 9, '10': 'proPic'},
    const {'1': 'id', '3': 4, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UserData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataDescriptor = $convert.base64Decode('CghVc2VyRGF0YRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIWCgZwcm9QaWMYAyABKAlSBnByb1BpYxIOCgJpZBgEIAEoCVICaWQ=');
@$core.Deprecated('Use userTokenDescriptor instead')
const UserToken$json = const {
  '1': 'UserToken',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `UserToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userTokenDescriptor = $convert.base64Decode('CglVc2VyVG9rZW4SFAoFdG9rZW4YASABKAlSBXRva2Vu');
@$core.Deprecated('Use requestStatusDescriptor instead')
const RequestStatus$json = const {
  '1': 'RequestStatus',
  '2': const [
    const {'1': 'userData', '3': 1, '4': 1, '5': 11, '6': '.UserData', '9': 0, '10': 'userData', '17': true},
    const {'1': 'token', '3': 2, '4': 1, '5': 11, '6': '.UserToken', '9': 1, '10': 'token', '17': true},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'statusType', '3': 4, '4': 1, '5': 14, '6': '.Status', '10': 'statusType'},
  ],
  '8': const [
    const {'1': '_userData'},
    const {'1': '_token'},
  ],
};

/// Descriptor for `RequestStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestStatusDescriptor = $convert.base64Decode('Cg1SZXF1ZXN0U3RhdHVzEioKCHVzZXJEYXRhGAEgASgLMgkuVXNlckRhdGFIAFIIdXNlckRhdGGIAQESJQoFdG9rZW4YAiABKAsyCi5Vc2VyVG9rZW5IAVIFdG9rZW6IAQESGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZRInCgpzdGF0dXNUeXBlGAQgASgOMgcuU3RhdHVzUgpzdGF0dXNUeXBlQgsKCV91c2VyRGF0YUIICgZfdG9rZW4=');
@$core.Deprecated('Use documentDescriptor instead')
const Document$json = const {
  '1': 'Document',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'docId', '3': 2, '4': 1, '5': 9, '10': 'docId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'createdAt', '3': 4, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'lastModifiedAt', '3': 5, '4': 1, '5': 9, '10': 'lastModifiedAt'},
    const {'1': 'content', '3': 6, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'content'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode('CghEb2N1bWVudBIWCgZ1c2VySWQYASABKAlSBnVzZXJJZBIUCgVkb2NJZBgCIAEoCVIFZG9jSWQSFAoFdGl0bGUYAyABKAlSBXRpdGxlEhwKCWNyZWF0ZWRBdBgEIAEoCVIJY3JlYXRlZEF0EiYKDmxhc3RNb2RpZmllZEF0GAUgASgJUg5sYXN0TW9kaWZpZWRBdBIuCgdjb250ZW50GAYgAygLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIHY29udGVudA==');
@$core.Deprecated('Use docCreationRequestDescriptor instead')
const DocCreationRequest$json = const {
  '1': 'DocCreationRequest',
  '2': const [
    const {'1': 'createdAt', '3': 1, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `DocCreationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List docCreationRequestDescriptor = $convert.base64Decode('ChJEb2NDcmVhdGlvblJlcXVlc3QSHAoJY3JlYXRlZEF0GAEgASgJUgljcmVhdGVkQXQ=');
@$core.Deprecated('Use listOfDocsDescriptor instead')
const ListOfDocs$json = const {
  '1': 'ListOfDocs',
  '2': const [
    const {'1': 'docs', '3': 1, '4': 3, '5': 11, '6': '.Document', '10': 'docs'},
  ],
};

/// Descriptor for `ListOfDocs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOfDocsDescriptor = $convert.base64Decode('CgpMaXN0T2ZEb2NzEh0KBGRvY3MYASADKAsyCS5Eb2N1bWVudFIEZG9jcw==');
@$core.Deprecated('Use headerUpdateDescriptor instead')
const HeaderUpdate$json = const {
  '1': 'HeaderUpdate',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'modifiedAt', '3': 2, '4': 1, '5': 9, '10': 'modifiedAt'},
    const {'1': 'docId', '3': 3, '4': 1, '5': 9, '10': 'docId'},
  ],
};

/// Descriptor for `HeaderUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerUpdateDescriptor = $convert.base64Decode('CgxIZWFkZXJVcGRhdGUSFAoFdGl0bGUYASABKAlSBXRpdGxlEh4KCm1vZGlmaWVkQXQYAiABKAlSCm1vZGlmaWVkQXQSFAoFZG9jSWQYAyABKAlSBWRvY0lk');
