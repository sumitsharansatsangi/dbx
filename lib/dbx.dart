import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:path_provider/path_provider.dart';
import 'generated/dbx.pb.dart';

class DBX {
  static final DBX _instance = DBX._internal();
  factory DBX() => _instance;
  DBX._internal();
  static late final encrypt.Key _key;
  static late final encrypt.IV _iv;
  static KeyValue _keyValue = KeyValue();
  static final dataMap = _keyValue.dataMap;
  static late File _file;
  static late encrypt.Encrypter _encrypter;
  static const _fileName = 'storage.dbx';
  static const _ssKey = 'ss';
  static const _svKey = 'sv';
  static const _keyLength = 32;
  static const _ivLength = 16;

  static Future<void> init() async {
    const FlutterSecureStorage secureStorage = FlutterSecureStorage(
        aOptions: AndroidOptions(
            encryptedSharedPreferences: true, resetOnError: true));

    await _initializeKeys(secureStorage);
    _encrypter =
        encrypt.Encrypter(encrypt.AES(_key, mode: encrypt.AESMode.cbc));
    final directory = await getApplicationSupportDirectory();
    final isWindows = Platform.isWindows;
    final separator = isWindows ? '\\' : '/';
    _file = File("${directory.path}$separator$_fileName");
    if (await _file.exists()) {
      await _decryptFile();
    } else {
      await _file.create(recursive: true);
    }
  }

  static Future<void> _initializeKeys(
      FlutterSecureStorage secureStorage) async {
    final encryptedSSData = await secureStorage.read(key: _ssKey);
    final encryptedSVData = await secureStorage.read(key: _svKey);

    if (encryptedSSData == null) {
      _key = encrypt.Key.fromLength(_keyLength);
      await secureStorage.write(key: _ssKey, value: _key.base64);
    } else {
      _key = encrypt.Key.fromBase64(encryptedSSData);
    }
    if (encryptedSVData == null) {
      _iv = encrypt.IV.fromLength(_ivLength);
      await secureStorage.write(key: _svKey, value: _iv.base64);
    } else {
      _iv = encrypt.IV.fromBase64(encryptedSVData);
    }
  }

  static Future<void> _decryptFile() async {
    try {
      final bytes = await _file.readAsBytes();
      if (bytes.isNotEmpty) {
        final decrypted =
            _encrypter.decryptBytes(encrypt.Encrypted(bytes), iv: _iv);
        _keyValue = KeyValue.fromBuffer(decrypted);
      }
    } catch (e) {
      print(e);
    }
  }

  static String? getString(String key) {
    return dataMap[key]?.stringValue;
  }

  static Map<String, String?> getStringBulk(List<String> keys) {
    return {for (var key in keys) key: dataMap[key]?.stringValue};
  }

  static void setString(String key, String value) {
    dataMap[key] = Value()..stringValue = value;
    _flush();
  }

  static void setStringBulk(Map<String, String> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..stringValue = entry.value;
    }
    _flush();
  }

  static int? getInt(String key) {
    return dataMap[key]?.int32Value;
  }

  static Map<String, int?> getIntBulk(List<String> keys) {
    return {for (var key in keys) key: dataMap[key]?.int32Value};
  }

  static void setInt(String key, int value) {
    dataMap[key] = Value()..int32Value = value;
    _flush();
  }

  static void setIntBulk(Map<String, int> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..int32Value = entry.value;
    }
    _flush();
  }

  static int? getLong(String key) {
    return dataMap[key]?.int64Value.toInt();
  }

  static Map<String, int?> getLongBulk(List<String> keys) {
    return {for (var key in keys) key: dataMap[key]?.int64Value.toInt()};
  }

  static void setLong(String key, int value) {
    dataMap[key] = Value()..int64Value = Int64(value);
    _flush();
  }

  static void setLongBulk(Map<String, int> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..int64Value = Int64(entry.value);
    }
    _flush();
  }

  static double? getFloat(String key) {
    return dataMap[key]?.floatValue;
  }

  static Map<String, double?> getFloatBulk(List<String> keys) {
    return {for (var key in keys) key: dataMap[key]?.floatValue};
  }

  static void setFloat(String key, double value) {
    dataMap[key] = Value()..floatValue = value;
    _flush();
  }

  static void setFloatBulk(Map<String, double> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..floatValue = entry.value;
    }
    _flush();
  }

  static double? getDouble(String key) {
    return dataMap[key]?.doubleValue;
  }

  static Map<String, double?> getDoubleBulk(List<String> keys) {
    return {for (var key in keys) key: dataMap[key]?.doubleValue};
  }

  static void setDouble(String key, double value) {
    dataMap[key] = Value()..floatValue = value;
    _flush();
  }

  static void setDoubleBulk(Map<String, double> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..floatValue = entry.value;
    }
    _flush();
  }

  static bool? getBool(String key) {
    return dataMap[key]?.boolValue;
  }

  static Map<String, bool?> getBoolBulk(List<String> keys) {
    return {for (var key in keys) key: dataMap[key]?.boolValue};
  }

  static void setBool(String key, bool value) {
    dataMap[key] = Value()..boolValue = value;
    _flush();
  }

  static void setBoolBulk(Map<String, bool> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..boolValue = entry.value;
    }
    _flush();
  }

  static Uint8List? getBytes(String key) {
    final bytes = dataMap[key]?.bytesValue;
    if (bytes != null) {
      return Uint8List.fromList(bytes);
    }
    return null;
  }

  static Map<String, Uint8List?> getBytesBulk(List<String> keys) {
    return {
      for (var key in keys)
        if (dataMap[key]?.bytesValue != null)
          key: Uint8List.fromList((dataMap[key]?.bytesValue)!)
    };
  }

  static void setBytes(String key, Uint8List value) {
    dataMap[key] = Value()..bytesValue = value;
    _flush();
  }

  static void setBytesBulk(Map<String, Uint8List> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..bytesValue = entry.value;
    }
    _flush();
  }

   static List<String>? getStringList(String key) {
    return dataMap[key]?.listStringValue.values;
  }

  static Map<String, List<String>> getStringListBulk(List<String> keys) {
    return {
      for (var key in keys)
        if (dataMap[key] != null && dataMap[key]?.listStringValue.values != null)
          key: dataMap[key]!.listStringValue.values
    };
  }

  static void setStringList(String key, List<String> value) {
    dataMap[key] = Value()..listStringValue = (ListString()..values.addAll(value));
    _flush();
  }

  static void setStringListBulk(Map<String, List<String>> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..listStringValue = (ListString()..values.addAll(entry.value));
    }
    _flush();
  }
   static List<int>? getIntList(String key) {
    return dataMap[key]?.listInt32Value.values;
  }

  static Map<String, List<int>> getIntListBulk(List<String> keys) {
    return {
      for (var key in keys)
        if (dataMap[key] != null && dataMap[key]?.listInt32Value.values != null)
          key: dataMap[key]!.listInt32Value.values
    };
  }

  static void setIntList(String key, List<int> value) {
    dataMap[key] = Value()..listInt32Value = (ListInt32()..values.addAll(value));
    _flush();
  }

  static void setIntListBulk(Map<String, List<int>> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..listInt32Value = (ListInt32()..values.addAll(entry.value));
    }
    _flush();
  }
  static List<int>? getLongList(String key) {
    final longList = dataMap[key]?.listInt64Value.values;
    if(longList == null)return null;
    return [for(var long in longList) long.toInt() ];
  }

  static Map<String, List<int>> getLongListBulk(List<String> keys) {
    return {
      for (var key in keys)
        if (dataMap[key] != null)
          key: [for(var long in  dataMap[key]!.listInt64Value.values) long.toInt() ]
    };
  }

  static void setLongList(String key, List<int> value) {
    dataMap[key] = Value()..listInt64Value = (ListInt64()..values.addAll([ for(var v in value) Int64(v)]));
    _flush();
  }

  static void setLongListBulk(Map<String, List<int>> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..listInt64Value = (ListInt64()..values.addAll([ for(var v in entry.value) Int64(v)]));
    }
    _flush();
  }

    static List<double>? getDoubleList(String key) {
      return dataMap[key]?.listFloatValue.values;
  }

  static Map<String, List<double>> getDoubleListBulk(List<String> keys) {
    return {
      for (var key in keys)
        if (dataMap[key] != null)
          key:  dataMap[key]!.listDoubleValue.values
    };
  }

  static void setDoubleList(String key, List<double> value) {
    dataMap[key] = Value()..listDoubleValue = (ListDouble()..values.addAll(value));
    _flush();
  }

  static void setDoubleListBulk(Map<String, List<double>> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..listDoubleValue = (ListDouble()..values.addAll(entry.value));
    }
    _flush();
  }

     static List<bool>? getBoolList(String key) { 
      return dataMap[key]?.listBoolValue.values;
  }

  static Map<String, List<bool>> getBoolListBulk(List<String> keys) {
    return {
      for (var key in keys)
        if (dataMap[key] != null)
          key:  dataMap[key]!.listBoolValue.values
    };
  }

  static void setBoolList(String key, List<bool> value) {
    dataMap[key] = Value()..listBoolValue = (ListBool()..values.addAll(value));
    _flush();
  }

  static void setBoolListBulk(Map<String, List<bool>> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..listBoolValue = (ListBool()..values.addAll(entry.value));
    }
    _flush();
  }

    static List<Uint8List>? getBytesList(String key) {
      final data = dataMap[key];
    if(data != null){
      final values =   data.listBytesValue.values;
       return [for (var value in values)  Uint8List.fromList(value) ];
    }
      return [];
  }

  static Map<String, List<Uint8List>> getBytesListBulk(List<String> keys) {
    return {
      for (var key in keys)
        if (dataMap[key] != null)
          key:   [for (var value in dataMap[key]!.listBytesValue.values)  Uint8List.fromList(value) ]
    };
  }

  static void setBytesList(String key, List<Uint8List> value) {
    dataMap[key] = Value()..listBytesValue = (ListBytes()..values.addAll(value));
    _flush();
  }

  static void setBytesListBulk(Map<String, List<Uint8List>> map) {
    for (var entry in map.entries) {
      dataMap[entry.key] = Value()..listBytesValue = (ListBytes()..values.addAll(entry.value));
    }
    _flush();
  }


  static void remove(String key) {
    if (dataMap.keys.contains(key)) {
      dataMap.remove(key);
      _flush();
    }
  }

  static void removeBulk(List<String> keys) {
    for (final key in keys) {
      if (dataMap.keys.contains(key)) {
        dataMap.remove(key);
      }
    }
    _flush();
  }

  static void _flush() {
    scheduleMicrotask(() {
      final originalBytes = _keyValue.writeToBuffer();
      if (originalBytes.isNotEmpty) {
        _file.writeAsBytes(
            _encrypter.encryptBytes(originalBytes, iv: _iv).bytes,
            flush: true);
      }
    });
  }

  static void clearAll() {
    scheduleMicrotask(() async {
      if (await _file.exists()) {
        await _file.delete();
      }
    });
  }
}
