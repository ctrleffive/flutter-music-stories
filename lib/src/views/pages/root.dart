import 'package:flutter/material.dart';

import 'package:music_stories/src/constants/data.dart';

import 'package:music_stories/src/views/components/quick_access.dart';

class RootPage extends StatelessWidget {
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
              QuickAccessScroll(DataConstant.quickAccessItems),
            ],
          ),
        ),
      ),
    );
  }
}
