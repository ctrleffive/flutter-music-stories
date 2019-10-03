import 'package:flutter/material.dart';

import 'package:music_stories/src/models/recent_thumb.dart';

class RootPage extends StatelessWidget {
  final List<RecentThumb> recentThumbs = [
    RecentThumb(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 500,
              child: ListView.builder(
                controller: PageController(
                  initialPage: 0,
                  viewportFraction: 0.7,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                      top: 8,
                      bottom: 8,
                      right: (index == (10 - 1)) ? 8 : 0
                    ),
                    child: Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width / 1.3,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
