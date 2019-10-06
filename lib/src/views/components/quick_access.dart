import 'package:flutter/material.dart';

import 'package:music_stories/src/constants/assets.dart';
import 'package:music_stories/src/constants/styles.dart';

import 'package:music_stories/src/models/quick_access.dart';

List<QuickAccessModel> _items = [];
List<String> _categories = [];

final PageController _categoryScrollController = PageController(
  initialPage: 1,
);

class QuickAccessScroll extends StatefulWidget {
  final List<QuickAccessModel> items;

  const QuickAccessScroll(
    this.items, {
    Key key,
  }) : super(key: key);

  @override
  _QuickAccessScrollState createState() => _QuickAccessScrollState();
}

class _QuickAccessScrollState extends State<QuickAccessScroll> {
  final

  @override
  void initState() {
    _items = this.widget.items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _HeadScroll(),
        _ThumbScroll(),
      ],
    );
  }
}

class _HeadScroll extends StatelessWidget {
  const _HeadScroll({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        controller: _categoryScrollController,
        itemCount: _categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedOpacity(
            opacity: 0 == index ? 1 : 0.1,
            duration: Duration(milliseconds: 200),
            child: Text(
              _categories[index],
              style: StylesConstant.sectionHead,
            ),
          );
        },
      ),
    );
  }
}

class _ThumbScroll extends StatelessWidget {
  const _ThumbScroll({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Text('h'),
              width: MediaQuery.of(context).size.width / 1.3,
            ),
          );
        },
      ),
    );
  }
}
