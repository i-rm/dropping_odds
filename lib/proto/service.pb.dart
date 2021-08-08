///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'message.pb.dart' as $1;

class DOBotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DOBotRequest', createEmptyInstance: create)
    ..pc<$1.Odd>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'odds', $pb.PbFieldType.PM, subBuilder: $1.Odd.create)
    ..hasRequiredFields = false
  ;

  DOBotRequest._() : super();
  factory DOBotRequest({
    $core.Iterable<$1.Odd>? odds,
  }) {
    final _result = create();
    if (odds != null) {
      _result.odds.addAll(odds);
    }
    return _result;
  }
  factory DOBotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DOBotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DOBotRequest clone() => DOBotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DOBotRequest copyWith(void Function(DOBotRequest) updates) => super.copyWith((message) => updates(message as DOBotRequest)) as DOBotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DOBotRequest create() => DOBotRequest._();
  DOBotRequest createEmptyInstance() => create();
  static $pb.PbList<DOBotRequest> createRepeated() => $pb.PbList<DOBotRequest>();
  @$core.pragma('dart2js:noInline')
  static DOBotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DOBotRequest>(create);
  static DOBotRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Odd> get odds => $_getList(0);
}

class DOBotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DOBotResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DOBotResponse._() : super();
  factory DOBotResponse() => create();
  factory DOBotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DOBotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DOBotResponse clone() => DOBotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DOBotResponse copyWith(void Function(DOBotResponse) updates) => super.copyWith((message) => updates(message as DOBotResponse)) as DOBotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DOBotResponse create() => DOBotResponse._();
  DOBotResponse createEmptyInstance() => create();
  static $pb.PbList<DOBotResponse> createRepeated() => $pb.PbList<DOBotResponse>();
  @$core.pragma('dart2js:noInline')
  static DOBotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DOBotResponse>(create);
  static DOBotResponse? _defaultInstance;
}

class ClientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ClientRequest._() : super();
  factory ClientRequest() => create();
  factory ClientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientRequest clone() => ClientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientRequest copyWith(void Function(ClientRequest) updates) => super.copyWith((message) => updates(message as ClientRequest)) as ClientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientRequest create() => ClientRequest._();
  ClientRequest createEmptyInstance() => create();
  static $pb.PbList<ClientRequest> createRepeated() => $pb.PbList<ClientRequest>();
  @$core.pragma('dart2js:noInline')
  static ClientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientRequest>(create);
  static ClientRequest? _defaultInstance;
}

class ClientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientResponse', createEmptyInstance: create)
    ..pc<$1.Odd>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'odds', $pb.PbFieldType.PM, subBuilder: $1.Odd.create)
    ..hasRequiredFields = false
  ;

  ClientResponse._() : super();
  factory ClientResponse({
    $core.Iterable<$1.Odd>? odds,
  }) {
    final _result = create();
    if (odds != null) {
      _result.odds.addAll(odds);
    }
    return _result;
  }
  factory ClientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientResponse clone() => ClientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientResponse copyWith(void Function(ClientResponse) updates) => super.copyWith((message) => updates(message as ClientResponse)) as ClientResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientResponse create() => ClientResponse._();
  ClientResponse createEmptyInstance() => create();
  static $pb.PbList<ClientResponse> createRepeated() => $pb.PbList<ClientResponse>();
  @$core.pragma('dart2js:noInline')
  static ClientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientResponse>(create);
  static ClientResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Odd> get odds => $_getList(0);
}

class ErrorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ErrorRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Text', protoName: 'Text')
    ..hasRequiredFields = false
  ;

  ErrorRequest._() : super();
  factory ErrorRequest({
    $core.String? text,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory ErrorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorRequest clone() => ErrorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorRequest copyWith(void Function(ErrorRequest) updates) => super.copyWith((message) => updates(message as ErrorRequest)) as ErrorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorRequest create() => ErrorRequest._();
  ErrorRequest createEmptyInstance() => create();
  static $pb.PbList<ErrorRequest> createRepeated() => $pb.PbList<ErrorRequest>();
  @$core.pragma('dart2js:noInline')
  static ErrorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorRequest>(create);
  static ErrorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

class ErrorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ErrorResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ErrorResponse._() : super();
  factory ErrorResponse() => create();
  factory ErrorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorResponse clone() => ErrorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorResponse copyWith(void Function(ErrorResponse) updates) => super.copyWith((message) => updates(message as ErrorResponse)) as ErrorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorResponse create() => ErrorResponse._();
  ErrorResponse createEmptyInstance() => create();
  static $pb.PbList<ErrorResponse> createRepeated() => $pb.PbList<ErrorResponse>();
  @$core.pragma('dart2js:noInline')
  static ErrorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorResponse>(create);
  static ErrorResponse? _defaultInstance;
}

class NextRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NextRequest', createEmptyInstance: create)
    ..pc<$1.Next>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nexts', $pb.PbFieldType.PM, subBuilder: $1.Next.create)
    ..hasRequiredFields = false
  ;

  NextRequest._() : super();
  factory NextRequest({
    $core.Iterable<$1.Next>? nexts,
  }) {
    final _result = create();
    if (nexts != null) {
      _result.nexts.addAll(nexts);
    }
    return _result;
  }
  factory NextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NextRequest clone() => NextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NextRequest copyWith(void Function(NextRequest) updates) => super.copyWith((message) => updates(message as NextRequest)) as NextRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NextRequest create() => NextRequest._();
  NextRequest createEmptyInstance() => create();
  static $pb.PbList<NextRequest> createRepeated() => $pb.PbList<NextRequest>();
  @$core.pragma('dart2js:noInline')
  static NextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NextRequest>(create);
  static NextRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Next> get nexts => $_getList(0);
}

class NextResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NextResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  NextResponse._() : super();
  factory NextResponse() => create();
  factory NextResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NextResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NextResponse clone() => NextResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NextResponse copyWith(void Function(NextResponse) updates) => super.copyWith((message) => updates(message as NextResponse)) as NextResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NextResponse create() => NextResponse._();
  NextResponse createEmptyInstance() => create();
  static $pb.PbList<NextResponse> createRepeated() => $pb.PbList<NextResponse>();
  @$core.pragma('dart2js:noInline')
  static NextResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NextResponse>(create);
  static NextResponse? _defaultInstance;
}

class EmptyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hours')
    ..hasRequiredFields = false
  ;

  EmptyRequest._() : super();
  factory EmptyRequest({
    $core.String? hours,
  }) {
    final _result = create();
    if (hours != null) {
      _result.hours = hours;
    }
    return _result;
  }
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hours => $_getSZ(0);
  @$pb.TagNumber(1)
  set hours($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHours() => $_has(0);
  @$pb.TagNumber(1)
  void clearHours() => clearField(1);
}

class EmptyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyResponse', createEmptyInstance: create)
    ..pc<$1.EmptyGame>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'games', $pb.PbFieldType.PM, subBuilder: $1.EmptyGame.create)
    ..hasRequiredFields = false
  ;

  EmptyResponse._() : super();
  factory EmptyResponse({
    $core.Iterable<$1.EmptyGame>? games,
  }) {
    final _result = create();
    if (games != null) {
      _result.games.addAll(games);
    }
    return _result;
  }
  factory EmptyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyResponse clone() => EmptyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyResponse copyWith(void Function(EmptyResponse) updates) => super.copyWith((message) => updates(message as EmptyResponse)) as EmptyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyResponse create() => EmptyResponse._();
  EmptyResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyResponse> createRepeated() => $pb.PbList<EmptyResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponse>(create);
  static EmptyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.EmptyGame> get games => $_getList(0);
}

class ResultRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResultRequest', createEmptyInstance: create)
    ..pc<$1.Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', $pb.PbFieldType.PM, subBuilder: $1.Result.create)
    ..hasRequiredFields = false
  ;

  ResultRequest._() : super();
  factory ResultRequest({
    $core.Iterable<$1.Result>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory ResultRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultRequest clone() => ResultRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultRequest copyWith(void Function(ResultRequest) updates) => super.copyWith((message) => updates(message as ResultRequest)) as ResultRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultRequest create() => ResultRequest._();
  ResultRequest createEmptyInstance() => create();
  static $pb.PbList<ResultRequest> createRepeated() => $pb.PbList<ResultRequest>();
  @$core.pragma('dart2js:noInline')
  static ResultRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultRequest>(create);
  static ResultRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Result> get results => $_getList(0);
}

class ResultResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResultResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResultResponse._() : super();
  factory ResultResponse() => create();
  factory ResultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultResponse clone() => ResultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultResponse copyWith(void Function(ResultResponse) updates) => super.copyWith((message) => updates(message as ResultResponse)) as ResultResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultResponse create() => ResultResponse._();
  ResultResponse createEmptyInstance() => create();
  static $pb.PbList<ResultResponse> createRepeated() => $pb.PbList<ResultResponse>();
  @$core.pragma('dart2js:noInline')
  static ResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultResponse>(create);
  static ResultResponse? _defaultInstance;
}

