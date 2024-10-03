import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:dbx/dbx.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBX.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final files = DBX.getBytesList('files');
    final profilePic = DBX.getBytes('profilePicture');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('DBX Example'),
          centerTitle: true,
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              if (profilePic != null && profilePic.isNotEmpty)
                Image.memory(Uint8List.fromList(profilePic)),
              Text("Message: ${DBX.getString('message') ?? 'No data'}"),
              Text(
                  "Username: ${DBX.getString('username') ?? 'No Data'}"), // Output: john_doe
              Text("Age: ${DBX.getInt('age')}"), // Output: 30
              Text("Height: ${DBX.getDouble('height')}"), // Output: 5.9
              Text("IsAdmin: ${DBX.getBool('isAdmin')}"), // Output: true
              Text(
                  "Tags: ${DBX.getStringList('tags') ?? [].join(',')}"), // Output: [dart, flutter]
              Text(
                  "Scores: ${DBX.getIntList('scores') ?? [].join(',')}"), // Output: [100, 95, 85]
              Text(
                  "Strike Rate: ${DBX.getDoubleList('strike_rate')}"), // Output: [36.6, 37.0, 36.8]
              Text(
                  "Attendence: ${DBX.getBoolList('attendence')}"), // Output: [true, false, true]
              if (files != null)
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final file in files)
                        Image.memory(Uint8List.fromList(file),
                            fit: BoxFit.contain,
                            width: (MediaQuery.of(context).size).width /
                                files.length),
                    ],
                  ),
                ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: writeData,
          icon: Icon(Icons.add),
          label: Text("Add Data"),
        ),
      ),
    );
  }

  Future<void> writeData() async {
    DBX.setString('message', 'Give DBX A Try!! 🎸🤘');
    DBX.setString('username', 'john_doe');
    DBX.setInt('age', 30);
    DBX.setDouble('height', 5.9);
    DBX.setBool('isAdmin', true);
    DBX.setBytes('profilePicture',
        (await rootBundle.load('assets/profile.jpeg')).buffer.asUint8List());
    DBX.setStringList('tags', ['dart', 'flutter']);
    DBX.setIntList('scores', [100, 95, 85]);
    DBX.setDoubleList('strike_rate', [36.6, 37.0, 36.8]);
    DBX.setBoolList('attendence', [true, false, true]);
    DBX.setBytesList('files', [
      (await rootBundle.load('assets/profile.jpeg')).buffer.asUint8List(),
      (await rootBundle.load('assets/logo.jpeg')).buffer.asUint8List(),
      (await rootBundle.load('assets/file1.jpeg')).buffer.asUint8List(),
      (await rootBundle.load('assets/file2.jpeg')).buffer.asUint8List(),
    ]);
    setState(() {});
  }
}
