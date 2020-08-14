import 'dart:io';

import 'package:featureme_app/editor.dart';
import 'package:featureme_app/scaffold.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FeatureMe',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FeatureMeScaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Select audio file"),
          onPressed: () async {
            final File file = await FilePicker.getFile(type: FileType.audio);
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Editor(
                  file: file,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
