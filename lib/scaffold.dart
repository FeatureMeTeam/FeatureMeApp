import 'package:flutter/material.dart';

class FeatureMeScaffold extends StatelessWidget {
  final Widget body;

  FeatureMeScaffold({@required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FeatureMe'),
      ),
      body: body,
    );
  }
}
