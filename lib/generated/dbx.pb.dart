//
//  Generated code. Do not modify.
//  source: dbx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class KeyValue extends $pb.GeneratedMessage {
  factory KeyValue({
    $core.Map<$core.String, Value>? dataMap,
  }) {
    final $result = create();
    if (dataMap != null) {
      $result.dataMap.addAll(dataMap);
    }
    return $result;
  }
  KeyValue._() : super();
  factory KeyValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyValue', createEmptyInstance: create)
    ..m<$core.String, Value>(1, _omitFieldNames ? '' : 'dataMap', protoName: 'dataMap', entryClassName: 'KeyValue.DataMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Value.create, valueDefaultOrMaker: Value.getDefault)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValue clone() => KeyValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValue copyWith(void Function(KeyValue) updates) => super.copyWith((message) => updates(message as KeyValue)) as KeyValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValue create() => KeyValue._();
  KeyValue createEmptyInstance() => create();
  static $pb.PbList<KeyValue> createRepeated() => $pb.PbList<KeyValue>();
  @$core.pragma('dart2js:noInline')
  static KeyValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValue>(create);
  static KeyValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, Value> get dataMap => $_getMap(0);
}

enum Value_Kind {
  stringValue, 
  uint32Value, 
  uint64Value, 
  int32Value, 
  int64Value, 
  floatValue, 
  doubleValue, 
  boolValue, 
  bytesValue, 
  listStringValue, 
  listInt32Value, 
  listInt64Value, 
  listuInt32Value, 
  listuInt64Value, 
  listFloatValue, 
  listDoubleValue, 
  listBoolValue, 
  listBytesValue, 
  notSet
}

class Value extends $pb.GeneratedMessage {
  factory Value({
    $core.String? stringValue,
    $core.int? uint32Value,
    $fixnum.Int64? uint64Value,
    $core.int? int32Value,
    $fixnum.Int64? int64Value,
    $core.double? floatValue,
    $core.double? doubleValue,
    $core.bool? boolValue,
    $core.List<$core.int>? bytesValue,
    ListString? listStringValue,
    ListInt32? listInt32Value,
    ListInt64? listInt64Value,
    ListuInt32? listuInt32Value,
    ListuInt64? listuInt64Value,
    ListFloat? listFloatValue,
    ListDouble? listDoubleValue,
    ListBool? listBoolValue,
    ListBytes? listBytesValue,
  }) {
    final $result = create();
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (uint32Value != null) {
      $result.uint32Value = uint32Value;
    }
    if (uint64Value != null) {
      $result.uint64Value = uint64Value;
    }
    if (int32Value != null) {
      $result.int32Value = int32Value;
    }
    if (int64Value != null) {
      $result.int64Value = int64Value;
    }
    if (floatValue != null) {
      $result.floatValue = floatValue;
    }
    if (doubleValue != null) {
      $result.doubleValue = doubleValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    if (bytesValue != null) {
      $result.bytesValue = bytesValue;
    }
    if (listStringValue != null) {
      $result.listStringValue = listStringValue;
    }
    if (listInt32Value != null) {
      $result.listInt32Value = listInt32Value;
    }
    if (listInt64Value != null) {
      $result.listInt64Value = listInt64Value;
    }
    if (listuInt32Value != null) {
      $result.listuInt32Value = listuInt32Value;
    }
    if (listuInt64Value != null) {
      $result.listuInt64Value = listuInt64Value;
    }
    if (listFloatValue != null) {
      $result.listFloatValue = listFloatValue;
    }
    if (listDoubleValue != null) {
      $result.listDoubleValue = listDoubleValue;
    }
    if (listBoolValue != null) {
      $result.listBoolValue = listBoolValue;
    }
    if (listBytesValue != null) {
      $result.listBytesValue = listBytesValue;
    }
    return $result;
  }
  Value._() : super();
  factory Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Value_Kind> _Value_KindByTag = {
    1 : Value_Kind.stringValue,
    2 : Value_Kind.uint32Value,
    3 : Value_Kind.uint64Value,
    4 : Value_Kind.int32Value,
    5 : Value_Kind.int64Value,
    6 : Value_Kind.floatValue,
    7 : Value_Kind.doubleValue,
    8 : Value_Kind.boolValue,
    9 : Value_Kind.bytesValue,
    10 : Value_Kind.listStringValue,
    11 : Value_Kind.listInt32Value,
    12 : Value_Kind.listInt64Value,
    13 : Value_Kind.listuInt32Value,
    14 : Value_Kind.listuInt64Value,
    15 : Value_Kind.listFloatValue,
    16 : Value_Kind.listDoubleValue,
    17 : Value_Kind.listBoolValue,
    18 : Value_Kind.listBytesValue,
    0 : Value_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Value', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18])
    ..aOS(1, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'uint32Value', $pb.PbFieldType.OU3, protoName: 'uint32Value')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'uint64Value', $pb.PbFieldType.OU6, protoName: 'uint64Value', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'int32Value', $pb.PbFieldType.O3, protoName: 'int32Value')
    ..aInt64(5, _omitFieldNames ? '' : 'int64Value', protoName: 'int64Value')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'floatValue', $pb.PbFieldType.OF, protoName: 'floatValue')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD, protoName: 'doubleValue')
    ..aOB(8, _omitFieldNames ? '' : 'boolValue', protoName: 'boolValue')
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'bytesValue', $pb.PbFieldType.OY, protoName: 'bytesValue')
    ..aOM<ListString>(10, _omitFieldNames ? '' : 'listStringValue', protoName: 'listStringValue', subBuilder: ListString.create)
    ..aOM<ListInt32>(11, _omitFieldNames ? '' : 'listInt32Value', protoName: 'listInt32Value', subBuilder: ListInt32.create)
    ..aOM<ListInt64>(12, _omitFieldNames ? '' : 'listInt64Value', protoName: 'listInt64Value', subBuilder: ListInt64.create)
    ..aOM<ListuInt32>(13, _omitFieldNames ? '' : 'listuInt32Value', protoName: 'listuInt32Value', subBuilder: ListuInt32.create)
    ..aOM<ListuInt64>(14, _omitFieldNames ? '' : 'listuInt64Value', protoName: 'listuInt64Value', subBuilder: ListuInt64.create)
    ..aOM<ListFloat>(15, _omitFieldNames ? '' : 'listFloatValue', protoName: 'listFloatValue', subBuilder: ListFloat.create)
    ..aOM<ListDouble>(16, _omitFieldNames ? '' : 'listDoubleValue', protoName: 'listDoubleValue', subBuilder: ListDouble.create)
    ..aOM<ListBool>(17, _omitFieldNames ? '' : 'listBoolValue', protoName: 'listBoolValue', subBuilder: ListBool.create)
    ..aOM<ListBytes>(18, _omitFieldNames ? '' : 'listBytesValue', protoName: 'listBytesValue', subBuilder: ListBytes.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Value clone() => Value()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Value copyWith(void Function(Value) updates) => super.copyWith((message) => updates(message as Value)) as Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  Value_Kind whichKind() => _Value_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get stringValue => $_getSZ(0);
  @$pb.TagNumber(1)
  set stringValue($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStringValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearStringValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get uint32Value => $_getIZ(1);
  @$pb.TagNumber(2)
  set uint32Value($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUint32Value() => $_has(1);
  @$pb.TagNumber(2)
  void clearUint32Value() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get uint64Value => $_getI64(2);
  @$pb.TagNumber(3)
  set uint64Value($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUint64Value() => $_has(2);
  @$pb.TagNumber(3)
  void clearUint64Value() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get int32Value => $_getIZ(3);
  @$pb.TagNumber(4)
  set int32Value($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInt32Value() => $_has(3);
  @$pb.TagNumber(4)
  void clearInt32Value() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get int64Value => $_getI64(4);
  @$pb.TagNumber(5)
  set int64Value($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInt64Value() => $_has(4);
  @$pb.TagNumber(5)
  void clearInt64Value() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get floatValue => $_getN(5);
  @$pb.TagNumber(6)
  set floatValue($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFloatValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearFloatValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get doubleValue => $_getN(6);
  @$pb.TagNumber(7)
  set doubleValue($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDoubleValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearDoubleValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get boolValue => $_getBF(7);
  @$pb.TagNumber(8)
  set boolValue($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBoolValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearBoolValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get bytesValue => $_getN(8);
  @$pb.TagNumber(9)
  set bytesValue($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBytesValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearBytesValue() => clearField(9);

  @$pb.TagNumber(10)
  ListString get listStringValue => $_getN(9);
  @$pb.TagNumber(10)
  set listStringValue(ListString v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasListStringValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearListStringValue() => clearField(10);
  @$pb.TagNumber(10)
  ListString ensureListStringValue() => $_ensure(9);

  @$pb.TagNumber(11)
  ListInt32 get listInt32Value => $_getN(10);
  @$pb.TagNumber(11)
  set listInt32Value(ListInt32 v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasListInt32Value() => $_has(10);
  @$pb.TagNumber(11)
  void clearListInt32Value() => clearField(11);
  @$pb.TagNumber(11)
  ListInt32 ensureListInt32Value() => $_ensure(10);

  @$pb.TagNumber(12)
  ListInt64 get listInt64Value => $_getN(11);
  @$pb.TagNumber(12)
  set listInt64Value(ListInt64 v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasListInt64Value() => $_has(11);
  @$pb.TagNumber(12)
  void clearListInt64Value() => clearField(12);
  @$pb.TagNumber(12)
  ListInt64 ensureListInt64Value() => $_ensure(11);

  @$pb.TagNumber(13)
  ListuInt32 get listuInt32Value => $_getN(12);
  @$pb.TagNumber(13)
  set listuInt32Value(ListuInt32 v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasListuInt32Value() => $_has(12);
  @$pb.TagNumber(13)
  void clearListuInt32Value() => clearField(13);
  @$pb.TagNumber(13)
  ListuInt32 ensureListuInt32Value() => $_ensure(12);

  @$pb.TagNumber(14)
  ListuInt64 get listuInt64Value => $_getN(13);
  @$pb.TagNumber(14)
  set listuInt64Value(ListuInt64 v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasListuInt64Value() => $_has(13);
  @$pb.TagNumber(14)
  void clearListuInt64Value() => clearField(14);
  @$pb.TagNumber(14)
  ListuInt64 ensureListuInt64Value() => $_ensure(13);

  @$pb.TagNumber(15)
  ListFloat get listFloatValue => $_getN(14);
  @$pb.TagNumber(15)
  set listFloatValue(ListFloat v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasListFloatValue() => $_has(14);
  @$pb.TagNumber(15)
  void clearListFloatValue() => clearField(15);
  @$pb.TagNumber(15)
  ListFloat ensureListFloatValue() => $_ensure(14);

  @$pb.TagNumber(16)
  ListDouble get listDoubleValue => $_getN(15);
  @$pb.TagNumber(16)
  set listDoubleValue(ListDouble v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasListDoubleValue() => $_has(15);
  @$pb.TagNumber(16)
  void clearListDoubleValue() => clearField(16);
  @$pb.TagNumber(16)
  ListDouble ensureListDoubleValue() => $_ensure(15);

  @$pb.TagNumber(17)
  ListBool get listBoolValue => $_getN(16);
  @$pb.TagNumber(17)
  set listBoolValue(ListBool v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasListBoolValue() => $_has(16);
  @$pb.TagNumber(17)
  void clearListBoolValue() => clearField(17);
  @$pb.TagNumber(17)
  ListBool ensureListBoolValue() => $_ensure(16);

  @$pb.TagNumber(18)
  ListBytes get listBytesValue => $_getN(17);
  @$pb.TagNumber(18)
  set listBytesValue(ListBytes v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasListBytesValue() => $_has(17);
  @$pb.TagNumber(18)
  void clearListBytesValue() => clearField(18);
  @$pb.TagNumber(18)
  ListBytes ensureListBytesValue() => $_ensure(17);
}

class ListString extends $pb.GeneratedMessage {
  factory ListString({
    $core.Iterable<$core.String>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListString._() : super();
  factory ListString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListString', createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'values')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListString clone() => ListString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListString copyWith(void Function(ListString) updates) => super.copyWith((message) => updates(message as ListString)) as ListString;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListString create() => ListString._();
  ListString createEmptyInstance() => create();
  static $pb.PbList<ListString> createRepeated() => $pb.PbList<ListString>();
  @$core.pragma('dart2js:noInline')
  static ListString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListString>(create);
  static ListString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get values => $_getList(0);
}

class ListInt32 extends $pb.GeneratedMessage {
  factory ListInt32({
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListInt32._() : super();
  factory ListInt32.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInt32.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListInt32', createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInt32 clone() => ListInt32()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInt32 copyWith(void Function(ListInt32) updates) => super.copyWith((message) => updates(message as ListInt32)) as ListInt32;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListInt32 create() => ListInt32._();
  ListInt32 createEmptyInstance() => create();
  static $pb.PbList<ListInt32> createRepeated() => $pb.PbList<ListInt32>();
  @$core.pragma('dart2js:noInline')
  static ListInt32 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInt32>(create);
  static ListInt32? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class ListInt64 extends $pb.GeneratedMessage {
  factory ListInt64({
    $core.Iterable<$fixnum.Int64>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListInt64._() : super();
  factory ListInt64.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInt64.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListInt64', createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInt64 clone() => ListInt64()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInt64 copyWith(void Function(ListInt64) updates) => super.copyWith((message) => updates(message as ListInt64)) as ListInt64;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListInt64 create() => ListInt64._();
  ListInt64 createEmptyInstance() => create();
  static $pb.PbList<ListInt64> createRepeated() => $pb.PbList<ListInt64>();
  @$core.pragma('dart2js:noInline')
  static ListInt64 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInt64>(create);
  static ListInt64? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get values => $_getList(0);
}

class ListuInt32 extends $pb.GeneratedMessage {
  factory ListuInt32({
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListuInt32._() : super();
  factory ListuInt32.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListuInt32.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListuInt32', createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListuInt32 clone() => ListuInt32()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListuInt32 copyWith(void Function(ListuInt32) updates) => super.copyWith((message) => updates(message as ListuInt32)) as ListuInt32;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListuInt32 create() => ListuInt32._();
  ListuInt32 createEmptyInstance() => create();
  static $pb.PbList<ListuInt32> createRepeated() => $pb.PbList<ListuInt32>();
  @$core.pragma('dart2js:noInline')
  static ListuInt32 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListuInt32>(create);
  static ListuInt32? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class ListuInt64 extends $pb.GeneratedMessage {
  factory ListuInt64({
    $core.Iterable<$fixnum.Int64>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListuInt64._() : super();
  factory ListuInt64.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListuInt64.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListuInt64', createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListuInt64 clone() => ListuInt64()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListuInt64 copyWith(void Function(ListuInt64) updates) => super.copyWith((message) => updates(message as ListuInt64)) as ListuInt64;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListuInt64 create() => ListuInt64._();
  ListuInt64 createEmptyInstance() => create();
  static $pb.PbList<ListuInt64> createRepeated() => $pb.PbList<ListuInt64>();
  @$core.pragma('dart2js:noInline')
  static ListuInt64 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListuInt64>(create);
  static ListuInt64? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get values => $_getList(0);
}

class ListFloat extends $pb.GeneratedMessage {
  factory ListFloat({
    $core.Iterable<$core.double>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListFloat._() : super();
  factory ListFloat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFloat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFloat', createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFloat clone() => ListFloat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFloat copyWith(void Function(ListFloat) updates) => super.copyWith((message) => updates(message as ListFloat)) as ListFloat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFloat create() => ListFloat._();
  ListFloat createEmptyInstance() => create();
  static $pb.PbList<ListFloat> createRepeated() => $pb.PbList<ListFloat>();
  @$core.pragma('dart2js:noInline')
  static ListFloat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFloat>(create);
  static ListFloat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get values => $_getList(0);
}

class ListDouble extends $pb.GeneratedMessage {
  factory ListDouble({
    $core.Iterable<$core.double>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListDouble._() : super();
  factory ListDouble.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDouble.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDouble', createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDouble clone() => ListDouble()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDouble copyWith(void Function(ListDouble) updates) => super.copyWith((message) => updates(message as ListDouble)) as ListDouble;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDouble create() => ListDouble._();
  ListDouble createEmptyInstance() => create();
  static $pb.PbList<ListDouble> createRepeated() => $pb.PbList<ListDouble>();
  @$core.pragma('dart2js:noInline')
  static ListDouble getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDouble>(create);
  static ListDouble? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get values => $_getList(0);
}

class ListBool extends $pb.GeneratedMessage {
  factory ListBool({
    $core.Iterable<$core.bool>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListBool._() : super();
  factory ListBool.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBool.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBool', createEmptyInstance: create)
    ..p<$core.bool>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KB)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBool clone() => ListBool()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBool copyWith(void Function(ListBool) updates) => super.copyWith((message) => updates(message as ListBool)) as ListBool;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBool create() => ListBool._();
  ListBool createEmptyInstance() => create();
  static $pb.PbList<ListBool> createRepeated() => $pb.PbList<ListBool>();
  @$core.pragma('dart2js:noInline')
  static ListBool getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBool>(create);
  static ListBool? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.bool> get values => $_getList(0);
}

class ListBytes extends $pb.GeneratedMessage {
  factory ListBytes({
    $core.Iterable<$core.List<$core.int>>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListBytes._() : super();
  factory ListBytes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBytes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBytes', createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBytes clone() => ListBytes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBytes copyWith(void Function(ListBytes) updates) => super.copyWith((message) => updates(message as ListBytes)) as ListBytes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBytes create() => ListBytes._();
  ListBytes createEmptyInstance() => create();
  static $pb.PbList<ListBytes> createRepeated() => $pb.PbList<ListBytes>();
  @$core.pragma('dart2js:noInline')
  static ListBytes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBytes>(create);
  static ListBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get values => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
