import 'package:bodyo/ui/components/custom_bottom_navigation_bar.dart';
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
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                NestedScrollView(
                  physics: BouncingScrollPhysics(),
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
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
                    physics: BouncingScrollPhysics(),
                    controller: _tabController,
                    children: [
                      RecipesInstructionsTab(),
                      RecipesIngredientsTab(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -1.0,
                  right: 0.0,
                  left: 0.0,
                  child: Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).scaffoldBackgroundColor,
                          Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.7),
                          Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.1),
                          // Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}
