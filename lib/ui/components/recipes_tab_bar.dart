import 'package:flutter/material.dart';

class RecipesTabBar extends StatelessWidget {
  final TabController tabController;

  const RecipesTabBar({@required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      margin: EdgeInsets.only(top: 10.0, left: 40.0, right: 40.0),
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: TabBar(
        controller: tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
        ),
        labelColor: Color(0xff20CAD1),
        unselectedLabelColor: Color(0xff161531),
        tabs: [
          Tab(text: 'Instructions'),
          Tab(text: 'Ingredients'),
        ],
      ),
    );
  }
}
