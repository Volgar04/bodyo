import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RecipesBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        children: [
          BannerItem(
            text: 'likes',
            value: '85',
            imageAsset: 'assets/images/heart.png',
          ),
          BannerItem(
            text: 'kcal',
            value: '451',
            imageAsset: 'assets/images/calories.png',
          ),
          BannerItem(
            text: 'mins',
            value: '19',
            imageAsset: 'assets/images/time.png',
          ),
        ],
      ),
    );
  }
}

class BannerItem extends StatelessWidget {
  final String value;
  final String text;
  final String imageAsset;

  const BannerItem({@required this.text, @required this.value, @required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageAsset,
              height: 17.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AutoSizeText(
                  value,
                  style: TextStyle(color: Color(0xff2A2E2E), fontWeight: FontWeight.bold, fontSize: 30.0),
                  maxLines: 1,
                  minFontSize: 10.0,
                  maxFontSize: 30.0,
                ),
                SizedBox(width: 5.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      text,
                      style: TextStyle(color: Color(0xff2A2E2E), fontSize: 14.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
