///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Game extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Game', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sport')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'championat')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homeTeam')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'awayTeam')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  Game._() : super();
  factory Game({
    $core.String? sport,
    $core.String? location,
    $core.String? championat,
    $core.String? homeTeam,
    $core.String? awayTeam,
    $core.String? date,
    $core.String? time,
    $core.String? url,
  }) {
    final _result = create();
    if (sport != null) {
      _result.sport = sport;
    }
    if (location != null) {
      _result.location = location;
    }
    if (championat != null) {
      _result.championat = championat;
    }
    if (homeTeam != null) {
      _result.homeTeam = homeTeam;
    }
    if (awayTeam != null) {
      _result.awayTeam = awayTeam;
    }
    if (date != null) {
      _result.date = date;
    }
    if (time != null) {
      _result.time = time;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory Game.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game clone() => Game()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game copyWith(void Function(Game) updates) => super.copyWith((message) => updates(message as Game)) as Game; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Game create() => Game._();
  Game createEmptyInstance() => create();
  static $pb.PbList<Game> createRepeated() => $pb.PbList<Game>();
  @$core.pragma('dart2js:noInline')
  static Game getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game>(create);
  static Game? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sport => $_getSZ(0);
  @$pb.TagNumber(1)
  set sport($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSport() => $_has(0);
  @$pb.TagNumber(1)
  void clearSport() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get championat => $_getSZ(2);
  @$pb.TagNumber(3)
  set championat($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChampionat() => $_has(2);
  @$pb.TagNumber(3)
  void clearChampionat() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get homeTeam => $_getSZ(3);
  @$pb.TagNumber(4)
  set homeTeam($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHomeTeam() => $_has(3);
  @$pb.TagNumber(4)
  void clearHomeTeam() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get awayTeam => $_getSZ(4);
  @$pb.TagNumber(5)
  set awayTeam($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAwayTeam() => $_has(4);
  @$pb.TagNumber(5)
  void clearAwayTeam() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get date => $_getSZ(5);
  @$pb.TagNumber(6)
  set date($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get time => $_getSZ(6);
  @$pb.TagNumber(7)
  set time($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get url => $_getSZ(7);
  @$pb.TagNumber(8)
  set url($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearUrl() => clearField(8);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item({
    $core.String? name,
    $core.String? value,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item clone() => Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item)) as Item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Event', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventNum')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventCond')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outcome')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outcomeCoefficient')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'drop')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalB')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'availableB')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event({
    $core.String? event,
    $core.String? eventNum,
    $core.String? eventCond,
    $core.String? outcome,
    $core.String? outcomeCoefficient,
    $core.String? drop,
    $core.String? totalB,
    $core.String? availableB,
    $core.String? url,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    if (eventNum != null) {
      _result.eventNum = eventNum;
    }
    if (eventCond != null) {
      _result.eventCond = eventCond;
    }
    if (outcome != null) {
      _result.outcome = outcome;
    }
    if (outcomeCoefficient != null) {
      _result.outcomeCoefficient = outcomeCoefficient;
    }
    if (drop != null) {
      _result.drop = drop;
    }
    if (totalB != null) {
      _result.totalB = totalB;
    }
    if (availableB != null) {
      _result.availableB = availableB;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get event => $_getSZ(0);
  @$pb.TagNumber(1)
  set event($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventNum => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventNum($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventNum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get eventCond => $_getSZ(2);
  @$pb.TagNumber(3)
  set eventCond($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventCond() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventCond() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get outcome => $_getSZ(3);
  @$pb.TagNumber(4)
  set outcome($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutcome() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutcome() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get outcomeCoefficient => $_getSZ(4);
  @$pb.TagNumber(5)
  set outcomeCoefficient($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOutcomeCoefficient() => $_has(4);
  @$pb.TagNumber(5)
  void clearOutcomeCoefficient() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get drop => $_getSZ(5);
  @$pb.TagNumber(6)
  set drop($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDrop() => $_has(5);
  @$pb.TagNumber(6)
  void clearDrop() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get totalB => $_getSZ(6);
  @$pb.TagNumber(7)
  set totalB($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalB() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalB() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get availableB => $_getSZ(7);
  @$pb.TagNumber(8)
  set availableB($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvailableB() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvailableB() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get url => $_getSZ(8);
  @$pb.TagNumber(9)
  set url($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearUrl() => clearField(9);
}

class Odd extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Odd', createEmptyInstance: create)
    ..aOM<Game>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'game', subBuilder: Game.create)
    ..aOM<Event>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', subBuilder: Event.create)
    ..pc<Item>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  Odd._() : super();
  factory Odd({
    Game? game,
    Event? event,
    $core.Iterable<Item>? items,
  }) {
    final _result = create();
    if (game != null) {
      _result.game = game;
    }
    if (event != null) {
      _result.event = event;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory Odd.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Odd.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Odd clone() => Odd()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Odd copyWith(void Function(Odd) updates) => super.copyWith((message) => updates(message as Odd)) as Odd; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Odd create() => Odd._();
  Odd createEmptyInstance() => create();
  static $pb.PbList<Odd> createRepeated() => $pb.PbList<Odd>();
  @$core.pragma('dart2js:noInline')
  static Odd getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Odd>(create);
  static Odd? _defaultInstance;

  @$pb.TagNumber(1)
  Game get game => $_getN(0);
  @$pb.TagNumber(1)
  set game(Game v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  Game ensureGame() => $_ensure(0);

  @$pb.TagNumber(2)
  Event get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(Event v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);
  @$pb.TagNumber(2)
  Event ensureEvent() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Item> get items => $_getList(2);
}

class Next extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Next', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'next1', protoName: 'next_1')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextX', protoName: 'next_X')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'next2', protoName: 'next_2')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bs')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  Next._() : super();
  factory Next({
    $core.String? next1,
    $core.String? nextX,
    $core.String? next2,
    $core.String? bs,
    $core.String? url,
  }) {
    final _result = create();
    if (next1 != null) {
      _result.next1 = next1;
    }
    if (nextX != null) {
      _result.nextX = nextX;
    }
    if (next2 != null) {
      _result.next2 = next2;
    }
    if (bs != null) {
      _result.bs = bs;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory Next.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Next.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Next clone() => Next()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Next copyWith(void Function(Next) updates) => super.copyWith((message) => updates(message as Next)) as Next; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Next create() => Next._();
  Next createEmptyInstance() => create();
  static $pb.PbList<Next> createRepeated() => $pb.PbList<Next>();
  @$core.pragma('dart2js:noInline')
  static Next getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Next>(create);
  static Next? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get next1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set next1($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext1() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nextX => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextX($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextX() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextX() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get next2 => $_getSZ(2);
  @$pb.TagNumber(3)
  set next2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNext2() => $_has(2);
  @$pb.TagNumber(3)
  void clearNext2() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bs => $_getSZ(3);
  @$pb.TagNumber(4)
  set bs($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBs() => $_has(3);
  @$pb.TagNumber(4)
  void clearBs() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => clearField(5);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Result', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'home')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'away')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameID', protoName: 'gameID')
    ..hasRequiredFields = false
  ;

  Result._() : super();
  factory Result({
    $core.String? home,
    $core.String? away,
    $core.String? description,
    $core.String? gameID,
  }) {
    final _result = create();
    if (home != null) {
      _result.home = home;
    }
    if (away != null) {
      _result.away = away;
    }
    if (description != null) {
      _result.description = description;
    }
    if (gameID != null) {
      _result.gameID = gameID;
    }
    return _result;
  }
  factory Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Result clone() => Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result)) as Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get home => $_getSZ(0);
  @$pb.TagNumber(1)
  set home($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHome() => $_has(0);
  @$pb.TagNumber(1)
  void clearHome() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get away => $_getSZ(1);
  @$pb.TagNumber(2)
  set away($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAway() => $_has(1);
  @$pb.TagNumber(2)
  void clearAway() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gameID => $_getSZ(3);
  @$pb.TagNumber(4)
  set gameID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGameID() => $_has(3);
  @$pb.TagNumber(4)
  void clearGameID() => clearField(4);
}

class EmptyGame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyGame', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  EmptyGame._() : super();
  factory EmptyGame({
    $core.String? id,
    $core.String? url,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory EmptyGame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyGame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyGame clone() => EmptyGame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyGame copyWith(void Function(EmptyGame) updates) => super.copyWith((message) => updates(message as EmptyGame)) as EmptyGame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyGame create() => EmptyGame._();
  EmptyGame createEmptyInstance() => create();
  static $pb.PbList<EmptyGame> createRepeated() => $pb.PbList<EmptyGame>();
  @$core.pragma('dart2js:noInline')
  static EmptyGame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyGame>(create);
  static EmptyGame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);
}

