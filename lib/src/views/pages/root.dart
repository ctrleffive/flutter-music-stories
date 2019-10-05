import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:music_stories/src/models/quick_access.dart';

import 'package:music_stories/src/views/components/quick_access.dart';

class RootPage extends StatelessWidget {
  final List<QuickAccessModel> quickAccessItems = [
    QuickAccessModel(
      categry: QuickAccessCategry.recent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              QuickAccessScroll(this.quickAccessItems),
            ],
          ),
        ),
      ),
    );
  }
}
