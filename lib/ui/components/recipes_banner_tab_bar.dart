import 'package:flutter/material.dart';

class RecipesBannerTabBar extends StatelessWidget {
  final Widget banner;
  final Widget tabBar;

  const RecipesBannerTabBar({this.banner, this.tabBar, Key key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _RecipesBannerTabBarDelegate(
        banner: banner,
        tabBar: tabBar,
      ),
    );
  }
}

class _RecipesBannerTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget banner;
  final Widget tabBar;

  _RecipesBannerTabBarDelegate({
    @required this.banner,
    @required this.tabBar,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          banner,
          tabBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 134;

  @override
  double get minExtent => 134;

  @override
  bool shouldRebuild(_RecipesBannerTabBarDelegate oldDelegate) => true;
}
