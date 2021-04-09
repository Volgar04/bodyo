import 'package:flutter/material.dart';

class BodyTabView extends StatelessWidget {
  final List<Widget> children;

  const BodyTabView({@required this.children});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(children),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
