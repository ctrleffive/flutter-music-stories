import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_stories/src/constants/assets.dart';
import 'package:music_stories/src/constants/styles.dart';

import 'package:music_stories/src/models/recent_thumb.dart';

class RootPage extends StatelessWidget {
  final List<RecentThumb> recentThumbs = [
    RecentThumb(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: StylesConstant.paddingSide / 2,
                  left: StylesConstant.paddingSide,
                  right: StylesConstant.paddingSide,
                ),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        'Recent',
                        style: StylesConstant.sectionHead,
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Text(
                          'Favourites',
                          style: StylesConstant.sectionHead,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  controller: PageController(
                    initialPage: 0,
                    viewportFraction: 0.7,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(50),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(Assets.recentThumbDemo),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent,
                              blurRadius: 50,
                              offset: Offset(0, 10),
                              spreadRadius: 1
                            ),
                          ],
                        ),
                        child: Text('h'),
                        width: MediaQuery.of(context).size.width / 1.3,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
