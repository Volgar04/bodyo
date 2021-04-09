import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0 + MediaQuery.of(context).padding.bottom,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Row(
        children: [
          NavigationBarItem(
              text: 'Dashboard', imageAsset: 'assets/images/dashboard.png'),
          NavigationBarItem(
              text: 'Exercises', imageAsset: 'assets/images/kettlebell.png'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 2.0),
              child: Image.asset('assets/images/home.png'),
            ),
          ),
          NavigationBarItem(
              text: 'Recipes',
              imageAsset: 'assets/images/recipes.png',
              isColorBlack: false),
          NavigationBarItem(
              text: 'Profile', imageAsset: 'assets/images/profile.png'),
        ],
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String imageAsset;
  final String text;
  final bool isColorBlack;

  const NavigationBarItem(
      {@required this.text,
      @required this.imageAsset,
      this.isColorBlack = true});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            height: 30.0,
            width: 30.0,
          ),
          Text(
            text,
            style: TextStyle(
                color: isColorBlack ? Color(0xff161531) : Color(0xff20CAD1),
                fontSize: 10.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
