import 'package:bodyo/ui/components/recipes_banner.dart';
import 'package:bodyo/ui/components/recipes_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          RecipesHeader(
            title: 'Colorful pancakes',
            background: 'assets/images/background.png',
          ),
          SliverToBoxAdapter(
            child: RecipesBanner(),
          ),
        ],
      ),
    );
  }
}
