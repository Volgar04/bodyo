import 'package:bodyo/ui/components/recipes_banner.dart';
import 'package:bodyo/ui/components/recipes_banner_tab_bar.dart';
import 'package:bodyo/ui/components/recipes_header.dart';
import 'package:bodyo/ui/components/recipes_ingredients_tab.dart';
import 'package:bodyo/ui/components/recipes_instructions_tab.dart';
import 'package:bodyo/ui/components/recipes_tab_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            RecipesHeader(
              title: 'Colorful pancakes',
              background: 'assets/images/background.png',
            ),
            RecipesBannerTabBar(
              banner: RecipesBanner(),
              tabBar: RecipesTabBar(tabController: _tabController),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            RecipesInstructionsTab(),
            RecipesIngredientsTab(),
          ],
        ),
      ),
    );
  }
}
