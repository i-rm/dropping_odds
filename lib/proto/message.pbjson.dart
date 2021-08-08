///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gameDescriptor instead')
const Game$json = const {
  '1': 'Game',
  '2': const [
    const {'1': 'sport', '3': 1, '4': 1, '5': 9, '10': 'sport'},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'championat', '3': 3, '4': 1, '5': 9, '10': 'championat'},
    const {'1': 'home_team', '3': 4, '4': 1, '5': 9, '10': 'homeTeam'},
    const {'1': 'away_team', '3': 5, '4': 1, '5': 9, '10': 'awayTeam'},
    const {'1': 'date', '3': 6, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'time', '3': 7, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'url', '3': 8, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode('CgRHYW1lEhQKBXNwb3J0GAEgASgJUgVzcG9ydBIaCghsb2NhdGlvbhgCIAEoCVIIbG9jYXRpb24SHgoKY2hhbXBpb25hdBgDIAEoCVIKY2hhbXBpb25hdBIbCglob21lX3RlYW0YBCABKAlSCGhvbWVUZWFtEhsKCWF3YXlfdGVhbRgFIAEoCVIIYXdheVRlYW0SEgoEZGF0ZRgGIAEoCVIEZGF0ZRISCgR0aW1lGAcgASgJUgR0aW1lEhAKA3VybBgIIAEoCVIDdXJs');
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFdmFsdWUYAiABKAlSBXZhbHVl');
@$core.Deprecated('Use eventDescriptor instead')
const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'event', '3': 1, '4': 1, '5': 9, '10': 'event'},
    const {'1': 'event_num', '3': 2, '4': 1, '5': 9, '10': 'eventNum'},
    const {'1': 'event_cond', '3': 3, '4': 1, '5': 9, '10': 'eventCond'},
    const {'1': 'outcome', '3': 4, '4': 1, '5': 9, '10': 'outcome'},
    const {'1': 'outcome_coefficient', '3': 5, '4': 1, '5': 9, '10': 'outcomeCoefficient'},
    const {'1': 'drop', '3': 6, '4': 1, '5': 9, '10': 'drop'},
    const {'1': 'total_b', '3': 7, '4': 1, '5': 9, '10': 'totalB'},
    const {'1': 'available_b', '3': 8, '4': 1, '5': 9, '10': 'availableB'},
    const {'1': 'url', '3': 9, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode('CgVFdmVudBIUCgVldmVudBgBIAEoCVIFZXZlbnQSGwoJZXZlbnRfbnVtGAIgASgJUghldmVudE51bRIdCgpldmVudF9jb25kGAMgASgJUglldmVudENvbmQSGAoHb3V0Y29tZRgEIAEoCVIHb3V0Y29tZRIvChNvdXRjb21lX2NvZWZmaWNpZW50GAUgASgJUhJvdXRjb21lQ29lZmZpY2llbnQSEgoEZHJvcBgGIAEoCVIEZHJvcBIXCgd0b3RhbF9iGAcgASgJUgZ0b3RhbEISHwoLYXZhaWxhYmxlX2IYCCABKAlSCmF2YWlsYWJsZUISEAoDdXJsGAkgASgJUgN1cmw=');
@$core.Deprecated('Use oddDescriptor instead')
const Odd$json = const {
  '1': 'Odd',
  '2': const [
    const {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.Game', '10': 'game'},
    const {'1': 'event', '3': 2, '4': 1, '5': 11, '6': '.Event', '10': 'event'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.Item', '10': 'items'},
  ],
};

/// Descriptor for `Odd`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oddDescriptor = $convert.base64Decode('CgNPZGQSGQoEZ2FtZRgBIAEoCzIFLkdhbWVSBGdhbWUSHAoFZXZlbnQYAiABKAsyBi5FdmVudFIFZXZlbnQSGwoFaXRlbXMYAyADKAsyBS5JdGVtUgVpdGVtcw==');
@$core.Deprecated('Use nextDescriptor instead')
const Next$json = const {
  '1': 'Next',
  '2': const [
    const {'1': 'next_1', '3': 1, '4': 1, '5': 9, '10': 'next1'},
    const {'1': 'next_X', '3': 2, '4': 1, '5': 9, '10': 'nextX'},
    const {'1': 'next_2', '3': 3, '4': 1, '5': 9, '10': 'next2'},
    const {'1': 'bs', '3': 4, '4': 1, '5': 9, '10': 'bs'},
    const {'1': 'url', '3': 5, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `Next`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nextDescriptor = $convert.base64Decode('CgROZXh0EhUKBm5leHRfMRgBIAEoCVIFbmV4dDESFQoGbmV4dF9YGAIgASgJUgVuZXh0WBIVCgZuZXh0XzIYAyABKAlSBW5leHQyEg4KAmJzGAQgASgJUgJicxIQCgN1cmwYBSABKAlSA3VybA==');
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'home', '3': 1, '4': 1, '5': 9, '10': 'home'},
    const {'1': 'away', '3': 2, '4': 1, '5': 9, '10': 'away'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'gameID', '3': 4, '4': 1, '5': 9, '10': 'gameID'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQSEgoEaG9tZRgBIAEoCVIEaG9tZRISCgRhd2F5GAIgASgJUgRhd2F5EiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIWCgZnYW1lSUQYBCABKAlSBmdhbWVJRA==');
@$core.Deprecated('Use emptyGameDescriptor instead')
const EmptyGame$json = const {
  '1': 'EmptyGame',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `EmptyGame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyGameDescriptor = $convert.base64Decode('CglFbXB0eUdhbWUSDgoCaWQYASABKAlSAmlkEhAKA3VybBgCIAEoCVIDdXJs');
