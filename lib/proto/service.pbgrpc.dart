///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class ClientServiceClient extends $grpc.Client {
  static final _$bot = $grpc.ClientMethod<$0.DOBotRequest, $0.DOBotResponse>(
      '/ClientService/bot',
      ($0.DOBotRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DOBotResponse.fromBuffer(value));
  static final _$client =
      $grpc.ClientMethod<$0.ClientRequest, $0.ClientResponse>(
          '/ClientService/client',
          ($0.ClientRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ClientResponse.fromBuffer(value));

  ClientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.DOBotResponse> bot($0.DOBotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bot, request, options: options);
  }

  $grpc.ResponseStream<$0.ClientResponse> client($0.ClientRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$client, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ClientServiceBase extends $grpc.Service {
  $core.String get $name => 'ClientService';

  ClientServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DOBotRequest, $0.DOBotResponse>(
        'bot',
        bot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DOBotRequest.fromBuffer(value),
        ($0.DOBotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClientRequest, $0.ClientResponse>(
        'client',
        client_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ClientRequest.fromBuffer(value),
        ($0.ClientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.DOBotResponse> bot_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DOBotRequest> request) async {
    return bot(call, await request);
  }

  $async.Stream<$0.ClientResponse> client_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ClientRequest> request) async* {
    yield* client(call, await request);
  }

  $async.Future<$0.DOBotResponse> bot(
      $grpc.ServiceCall call, $0.DOBotRequest request);
  $async.Stream<$0.ClientResponse> client(
      $grpc.ServiceCall call, $0.ClientRequest request);
}

class OddServiceClient extends $grpc.Client {
  static final _$bot = $grpc.ClientMethod<$0.DOBotRequest, $0.DOBotResponse>(
      '/OddService/bot',
      ($0.DOBotRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DOBotResponse.fromBuffer(value));
  static final _$sendError =
      $grpc.ClientMethod<$0.ErrorRequest, $0.ErrorResponse>(
          '/OddService/sendError',
          ($0.ErrorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ErrorResponse.fromBuffer(value));

  OddServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.DOBotResponse> bot($0.DOBotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bot, request, options: options);
  }

  $grpc.ResponseFuture<$0.ErrorResponse> sendError($0.ErrorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendError, request, options: options);
  }
}

abstract class OddServiceBase extends $grpc.Service {
  $core.String get $name => 'OddService';

  OddServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DOBotRequest, $0.DOBotResponse>(
        'bot',
        bot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DOBotRequest.fromBuffer(value),
        ($0.DOBotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ErrorRequest, $0.ErrorResponse>(
        'sendError',
        sendError_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ErrorRequest.fromBuffer(value),
        ($0.ErrorResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.DOBotResponse> bot_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DOBotRequest> request) async {
    return bot(call, await request);
  }

  $async.Future<$0.ErrorResponse> sendError_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ErrorRequest> request) async {
    return sendError(call, await request);
  }

  $async.Future<$0.DOBotResponse> bot(
      $grpc.ServiceCall call, $0.DOBotRequest request);
  $async.Future<$0.ErrorResponse> sendError(
      $grpc.ServiceCall call, $0.ErrorRequest request);
}

class NextServiceClient extends $grpc.Client {
  static final _$next = $grpc.ClientMethod<$0.NextRequest, $0.NextResponse>(
      '/NextService/next',
      ($0.NextRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NextResponse.fromBuffer(value));

  NextServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.NextResponse> next($0.NextRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$next, request, options: options);
  }
}

abstract class NextServiceBase extends $grpc.Service {
  $core.String get $name => 'NextService';

  NextServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.NextRequest, $0.NextResponse>(
        'next',
        next_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NextRequest.fromBuffer(value),
        ($0.NextResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.NextResponse> next_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NextRequest> request) async {
    return next(call, await request);
  }

  $async.Future<$0.NextResponse> next(
      $grpc.ServiceCall call, $0.NextRequest request);
}

class ResultServiceClient extends $grpc.Client {
  static final _$emptyGame =
      $grpc.ClientMethod<$0.EmptyRequest, $0.EmptyResponse>(
          '/ResultService/emptyGame',
          ($0.EmptyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$result =
      $grpc.ClientMethod<$0.ResultRequest, $0.ResultResponse>(
          '/ResultService/result',
          ($0.ResultRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ResultResponse.fromBuffer(value));

  ResultServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.EmptyResponse> emptyGame($0.EmptyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$emptyGame, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResultResponse> result($0.ResultRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$result, request, options: options);
  }
}

abstract class ResultServiceBase extends $grpc.Service {
  $core.String get $name => 'ResultService';

  ResultServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.EmptyResponse>(
        'emptyGame',
        emptyGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResultRequest, $0.ResultResponse>(
        'result',
        result_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResultRequest.fromBuffer(value),
        ($0.ResultResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.EmptyResponse> emptyGame_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return emptyGame(call, await request);
  }

  $async.Future<$0.ResultResponse> result_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ResultRequest> request) async {
    return result(call, await request);
  }

  $async.Future<$0.EmptyResponse> emptyGame(
      $grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.ResultResponse> result(
      $grpc.ServiceCall call, $0.ResultRequest request);
}
