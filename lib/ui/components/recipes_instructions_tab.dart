import 'package:bodyo/ui/components/body_tab_view.dart';
import 'package:flutter/material.dart';

class RecipesInstructionsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BodyTabView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1',
                style: TextStyle(
                    color: Color(0xff20CAD1),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  'In a large bowl, sift together the flour, baking powder, salt and sugar. Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
                  style: TextStyle(color: Color(0xff2A2E2E)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2',
                style: TextStyle(
                    color: Color(0xff20CAD1),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  'Heat a lightly oiled griddle or frying pan over medium-high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.',
                  style: TextStyle(color: Color(0xff2A2E2E)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
