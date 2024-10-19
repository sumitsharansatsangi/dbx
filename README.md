<img src="https://raw.githubusercontent.com/sumitsharansatsangi/dbx/main/logo.jpeg" alt="Logo">

# DBX

`dbx` is a Dart package designed for secure and efficient local storage using Protocol Buffers instead of JSON.

- A Key-Value Database with Easy API that supports wide range of Data Types.

## Features

- **Protocol Buffers**: Utilizes Protocol Buffers (protobuf) for data serialization, offering significant performance improvements over JSON.
- **Secure Storage**: Data is securely stored using `flutter_secure_storage` and encrypted with the `encrypt` library.
- **Comprehensive Data Support**: Supports all data types, including their list variants.
  - ##### What we mean
    - Supported data types are `int`, `double`, `bool`, `String`, `Uint8List`, `List<int>`, `List<double>`, `List<bool>`, `List<String>`, and `List<Uint8List>`.
    - `Uint8List` for bytes 
- **Efficient and Compact**: Protobuf is more efficient and compact compared to JSON, reducing latency and improving app performance.
- **Familiar Api**: Same API as of `SharedPreference`.
    - Won't miss `SharedPreference`. No headache, easy adaption.🚀 
- **Created With Simplicity in mind**
    - No Object Creation, no overhead of state management solution
    - No Object Passing
    - All method are static, just call and use.

## Benefits of Using Protocol Buffers Over JSON

- **Performance**: Protobuf is significantly faster than JSON for serialization and deserialization.
- **Compactness**: Protobuf messages are smaller in size, which reduces storage space and improves transmission speed.
- **Efficiency**: Protobuf is more efficient in terms of CPU and memory usage.
                    
## Advantages Over Shared Preferences

- **Data Integrity**: Protobuf ensures data integrity and consistency, which is crucial for complex data structures.
- **Security**: Data is encrypted and securely stored, unlike shared preferences which can be more vulnerable to security breaches.
- **Scalability**: Protobuf's efficient serialization makes it suitable for larger datasets and more complex data structures.

## Installation

Add `dbx` to your `pubspec.yaml`:

```yaml
dependencies:
  dbx: ^0.0.1
```
you can install packages from the command line:

with `Flutter`:

```bash
$  flutter pub get
```
with `Dart`:

```bash
$  dart pub get
```

## Initialization

with `Flutter`:

```dart
import 'package:dbx/dbx.dart';

// Example usage
void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await DBX.init();
    runApp(MyApp());
}
```

with `dart`:

```dart
import 'package:dbx/dbx.dart';

// Example usage
void main() async {
  await DBX.init();
}
```

## Usage

- Store Data
```dart
  // Store data
   DBX.setString('message', 'Give it a try!');
   DBX.setString('username', 'john_doe');
   DBX.setInt('age', 30);
   DBX.setDouble('height', 5.9);
   DBX.setBool('isAdmin', true);
   DBX.setBytes(
        'profilePicture', File('assets/profile.jpeg').readAsBytesSync());
   DBX.setStringList('tags', ['dart', 'flutter']);
   DBX.setIntList('scores', [100, 95, 85]);
   DBX.setDoubleList('strike_rate', [36.6, 37.0, 36.8]);
   DBX.setBoolList('attendence', [true, false, true]);
   DBX.setBytesList('files', [
      File('assets/file1.jpeg').readAsBytesSync(),
      File('assets/logo.jpeg').readAsBytesSync(),
      File('assets/file2.jpeg').readAsBytesSync()
    ]);
 
```
- Read Data
```dart
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('DBX Example'),
          centerTitle: true,
        ),
        body: Center(
          child: FutureBuilder(
            future: writeData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                final files =DBX.getBytesList('files');
                return Column(
                  children: [
                    Image.memory(Uint8List.fromList(
                       DBX.getBytes('profilePicture') ?? [])),
                    Text("Message: ${DBX.getString('message') ?? 'No data'}"),
                    Text(
                        "Username: ${DBX.getString('username') ?? 'No Data'}"), // Output: john_doe
                    Text("Age: ${DBX.getInt('age')}"), // Output: 30
                    Text(
                        "Height: ${DBX.getDouble('height')}"), // Output: 5.9
                    Text(
                        "IsAdmin: ${DBX.getBool('isAdmin')}"), // Output: true
                    Text(
                        "Tags: ${DBX.getStringList('tags') ?? [].join(',')}"), // Output: [dart, flutter]
                    Text(
                        "Scores: ${DBX.getIntList('scores') ?? [].join(',')}"), // Output: [100, 95, 85]
                    Text(
                        "Strike Rate: ${DBX.getDoubleList('strike_rate')}"), // Output: [36.6, 37.0, 36.8]
                    Text(
                        "Attendence: ${DBX.getBoolList('attendence')}"), // Output: [true, false, true]
                    if (files != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final file in files)
                            Image.memory(Uint8List.fromList(file)),
                        ],
                      ),
                  ],
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }

```

## Contributing

We welcome contributions from the community! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request.

## Sponsor

If you find this package useful, please consider sponsoring its development to help us continue improving it. You will be mentioned below

[![Sponsor](https://img.shields.io/badge/Sponsor-❤-red)]()
<!-- (https://github.com/sponsors/yourusername) -->

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## TODO

- **Support for Dart Objects**: Adding support for storing Dart objects is still pending and requires contributions from the community. If you are interested in helping out, please check out the issues section or submit a pull request.

