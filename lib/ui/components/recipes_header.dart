import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RecipesHeader extends StatelessWidget {
  final String title;
  final String background;

  const RecipesHeader({this.title, this.background, Key key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _RecipesHeaderDelegate(
        width: MediaQuery.of(context).size.width,
        background: background,
        title: title,
      ),
    );
  }
}

class _RecipesHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double width;
  final String title;
  final String background;

  _RecipesHeaderDelegate({
    @required this.width,
    @required this.title,
    @required this.background,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          background,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: -1.0,
          left: 0.0,
          right: 0.0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor,
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(
                right: 15.0, top: MediaQuery.of(context).padding.top + 15.0),
            child: Container(
              height: 42.0,
              width: 42.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 2, color: Color(0xff161531), width: 18.0),
                    SizedBox(height: 4.0),
                    Container(height: 2, color: Color(0xff161531), width: 18.0),
                    SizedBox(height: 4.0),
                    Container(height: 2, color: Color(0xff161531), width: 9.0),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
                left: 15.0, top: MediaQuery.of(context).padding.top + 15.0),
            child: Container(
              height: 42.0,
              width: 42.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(child: Icon(Icons.chevron_left)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 45.0, bottom: 20.0, right: 45.0),
            child: AutoSizeText(
              title,
              style: TextStyle(
                  color: Color(0xff161531),
                  fontSize: 33.0,
                  fontWeight: FontWeight.bold),
              maxFontSize: 33,
              maxLines: 1,
              minFontSize: 10.0,
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => width;

  @override
  double get minExtent => width - (width / 2.5);

  @override
  bool shouldRebuild(_RecipesHeaderDelegate oldDelegate) => true;
}
