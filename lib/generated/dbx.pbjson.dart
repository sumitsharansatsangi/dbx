//
//  Generated code. Do not modify.
//  source: dbx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use keyValueDescriptor instead')
const KeyValue$json = {
  '1': 'KeyValue',
  '2': [
    {
      '1': 'dataMap',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.KeyValue.DataMapEntry',
      '10': 'dataMap'
    },
  ],
  '3': [KeyValue_DataMapEntry$json],
};

@$core.Deprecated('Use keyValueDescriptor instead')
const KeyValue_DataMapEntry$json = {
  '1': 'DataMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Value', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `KeyValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueDescriptor = $convert.base64Decode(
    'CghLZXlWYWx1ZRIwCgdkYXRhTWFwGAEgAygLMhYuS2V5VmFsdWUuRGF0YU1hcEVudHJ5UgdkYX'
    'RhTWFwGkIKDERhdGFNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIcCgV2YWx1ZRgCIAEoCzIG'
    'LlZhbHVlUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'stringValue', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'uint32Value', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'uint32Value'},
    {'1': 'uint64Value', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'uint64Value'},
    {'1': 'int32Value', '3': 4, '4': 1, '5': 5, '9': 0, '10': 'int32Value'},
    {'1': 'int64Value', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'int64Value'},
    {'1': 'floatValue', '3': 6, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    {'1': 'doubleValue', '3': 7, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'boolValue', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'bytesValue', '3': 9, '4': 1, '5': 12, '9': 0, '10': 'bytesValue'},
    {
      '1': 'listStringValue',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.ListString',
      '9': 0,
      '10': 'listStringValue'
    },
    {
      '1': 'listInt32Value',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.ListInt32',
      '9': 0,
      '10': 'listInt32Value'
    },
    {
      '1': 'listInt64Value',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.ListInt64',
      '9': 0,
      '10': 'listInt64Value'
    },
    {
      '1': 'listuInt32Value',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.ListuInt32',
      '9': 0,
      '10': 'listuInt32Value'
    },
    {
      '1': 'listuInt64Value',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.ListuInt64',
      '9': 0,
      '10': 'listuInt64Value'
    },
    {
      '1': 'listFloatValue',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.ListFloat',
      '9': 0,
      '10': 'listFloatValue'
    },
    {
      '1': 'listDoubleValue',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.ListDouble',
      '9': 0,
      '10': 'listDoubleValue'
    },
    {
      '1': 'listBoolValue',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.ListBool',
      '9': 0,
      '10': 'listBoolValue'
    },
    {
      '1': 'listBytesValue',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.ListBytes',
      '9': 0,
      '10': 'listBytesValue'
    },
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRIiCgtzdHJpbmdWYWx1ZRgBIAEoCUgAUgtzdHJpbmdWYWx1ZRIiCgt1aW50MzJWYW'
    'x1ZRgCIAEoDUgAUgt1aW50MzJWYWx1ZRIiCgt1aW50NjRWYWx1ZRgDIAEoBEgAUgt1aW50NjRW'
    'YWx1ZRIgCgppbnQzMlZhbHVlGAQgASgFSABSCmludDMyVmFsdWUSIAoKaW50NjRWYWx1ZRgFIA'
    'EoA0gAUgppbnQ2NFZhbHVlEiAKCmZsb2F0VmFsdWUYBiABKAJIAFIKZmxvYXRWYWx1ZRIiCgtk'
    'b3VibGVWYWx1ZRgHIAEoAUgAUgtkb3VibGVWYWx1ZRIeCglib29sVmFsdWUYCCABKAhIAFIJYm'
    '9vbFZhbHVlEiAKCmJ5dGVzVmFsdWUYCSABKAxIAFIKYnl0ZXNWYWx1ZRI3Cg9saXN0U3RyaW5n'
    'VmFsdWUYCiABKAsyCy5MaXN0U3RyaW5nSABSD2xpc3RTdHJpbmdWYWx1ZRI0Cg5saXN0SW50Mz'
    'JWYWx1ZRgLIAEoCzIKLkxpc3RJbnQzMkgAUg5saXN0SW50MzJWYWx1ZRI0Cg5saXN0SW50NjRW'
    'YWx1ZRgMIAEoCzIKLkxpc3RJbnQ2NEgAUg5saXN0SW50NjRWYWx1ZRI3Cg9saXN0dUludDMyVm'
    'FsdWUYDSABKAsyCy5MaXN0dUludDMySABSD2xpc3R1SW50MzJWYWx1ZRI3Cg9saXN0dUludDY0'
    'VmFsdWUYDiABKAsyCy5MaXN0dUludDY0SABSD2xpc3R1SW50NjRWYWx1ZRI0Cg5saXN0RmxvYX'
    'RWYWx1ZRgPIAEoCzIKLkxpc3RGbG9hdEgAUg5saXN0RmxvYXRWYWx1ZRI3Cg9saXN0RG91Ymxl'
    'VmFsdWUYECABKAsyCy5MaXN0RG91YmxlSABSD2xpc3REb3VibGVWYWx1ZRIxCg1saXN0Qm9vbF'
    'ZhbHVlGBEgASgLMgkuTGlzdEJvb2xIAFINbGlzdEJvb2xWYWx1ZRI0Cg5saXN0Qnl0ZXNWYWx1'
    'ZRgSIAEoCzIKLkxpc3RCeXRlc0gAUg5saXN0Qnl0ZXNWYWx1ZUIGCgRraW5k');

@$core.Deprecated('Use listStringDescriptor instead')
const ListString$json = {
  '1': 'ListString',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `ListString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStringDescriptor =
    $convert.base64Decode('CgpMaXN0U3RyaW5nEhYKBnZhbHVlcxgBIAMoCVIGdmFsdWVz');

@$core.Deprecated('Use listInt32Descriptor instead')
const ListInt32$json = {
  '1': 'ListInt32',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 5, '10': 'values'},
  ],
};

/// Descriptor for `ListInt32`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInt32Descriptor =
    $convert.base64Decode('CglMaXN0SW50MzISFgoGdmFsdWVzGAEgAygFUgZ2YWx1ZXM=');

@$core.Deprecated('Use listInt64Descriptor instead')
const ListInt64$json = {
  '1': 'ListInt64',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 3, '10': 'values'},
  ],
};

/// Descriptor for `ListInt64`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInt64Descriptor =
    $convert.base64Decode('CglMaXN0SW50NjQSFgoGdmFsdWVzGAEgAygDUgZ2YWx1ZXM=');

@$core.Deprecated('Use listuInt32Descriptor instead')
const ListuInt32$json = {
  '1': 'ListuInt32',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 13, '10': 'values'},
  ],
};

/// Descriptor for `ListuInt32`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listuInt32Descriptor =
    $convert.base64Decode('CgpMaXN0dUludDMyEhYKBnZhbHVlcxgBIAMoDVIGdmFsdWVz');

@$core.Deprecated('Use listuInt64Descriptor instead')
const ListuInt64$json = {
  '1': 'ListuInt64',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 4, '10': 'values'},
  ],
};

/// Descriptor for `ListuInt64`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listuInt64Descriptor =
    $convert.base64Decode('CgpMaXN0dUludDY0EhYKBnZhbHVlcxgBIAMoBFIGdmFsdWVz');

@$core.Deprecated('Use listFloatDescriptor instead')
const ListFloat$json = {
  '1': 'ListFloat',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 2, '10': 'values'},
  ],
};

/// Descriptor for `ListFloat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFloatDescriptor =
    $convert.base64Decode('CglMaXN0RmxvYXQSFgoGdmFsdWVzGAEgAygCUgZ2YWx1ZXM=');

@$core.Deprecated('Use listDoubleDescriptor instead')
const ListDouble$json = {
  '1': 'ListDouble',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 1, '10': 'values'},
  ],
};

/// Descriptor for `ListDouble`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDoubleDescriptor =
    $convert.base64Decode('CgpMaXN0RG91YmxlEhYKBnZhbHVlcxgBIAMoAVIGdmFsdWVz');

@$core.Deprecated('Use listBoolDescriptor instead')
const ListBool$json = {
  '1': 'ListBool',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 8, '10': 'values'},
  ],
};

/// Descriptor for `ListBool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBoolDescriptor =
    $convert.base64Decode('CghMaXN0Qm9vbBIWCgZ2YWx1ZXMYASADKAhSBnZhbHVlcw==');

@$core.Deprecated('Use listBytesDescriptor instead')
const ListBytes$json = {
  '1': 'ListBytes',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 12, '10': 'values'},
  ],
};

/// Descriptor for `ListBytes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBytesDescriptor =
    $convert.base64Decode('CglMaXN0Qnl0ZXMSFgoGdmFsdWVzGAEgAygMUgZ2YWx1ZXM=');
