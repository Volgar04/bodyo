import 'package:bodyo/ui/components/body_tab_view.dart';
import 'package:flutter/material.dart';

class RecipesIngredientsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BodyTabView(
      children: [
        RecipesIngredientsItem(text: '1 1/2 cups all-purpose flour'),
        RecipesIngredientsItem(text: '3 tablespoons butter, melted'),
        RecipesIngredientsItem(text: '3 1/2 teaspoons baking powder'),
        RecipesIngredientsItem(text: '1 1/4 cups milk'),
        RecipesIngredientsItem(text: '1 tablespoon white sugar'),
        RecipesIngredientsItem(text: '1 teaspoon salt'),
        RecipesIngredientsItem(text: '1 egg'),
      ],
    );
  }
}

class RecipesIngredientsItem extends StatelessWidget {
  final String text;

  RecipesIngredientsItem({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 45.0, bottom: 12.0, top: 12.0, right: 20.0),
      child: Row(
        children: [
          Container(
            width: 10.0,
            height: 10.0,
            decoration:
                BoxDecoration(color: Color(0xff20CAD1), shape: BoxShape.circle),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                  color: Color(0xff2A2E2E),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
