import 'package:flutter/material.dart';

class RecipesPageView extends StatelessWidget {
  final TabController tabController;

  const RecipesPageView({@required this.tabController});


  static var _instructionDatas = [
    {
      'step': '1',
      'description':
      'In a large bowl, sift together the flour, baking powder, salt and sugar. Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.'
    },
    {
      'step': '2',
      'description':
      'Heat a lightly oiled griddle or frying pan over medium-high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    }
  ];

  static var _ingredientsDatas = [
    '1 1/2 cups all-purpose flour',
    '3 tablespoons butter, melted',
    '3 1/2 teaspoons baking powder',
    '1 1/4 cups milk',
    '1 tablespoon white sugar',
    '1 teaspoon salt',
    '1 egg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Container(
                height: 1200,
                color: Colors.green,
                width: double.infinity,
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Text(index.toString());
                },
                itemCount: 250,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
