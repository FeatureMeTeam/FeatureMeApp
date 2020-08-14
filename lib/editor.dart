import 'dart:io';

import 'package:featureme_app/scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatefulWidget {
  final File file;

  Editor({this.file});

  @override
  State<StatefulWidget> createState() {
    return _EditorState();
  }
}

class _EditorState extends State<Editor> {
  @override
  Widget build(BuildContext context) {
    return FeatureMeScaffold(
      body: Center(
        child: Text(
          "TODO: Make editor!\n${widget.file}",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
