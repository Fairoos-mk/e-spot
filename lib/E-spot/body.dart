import 'package:flutter/material.dart';

import '../../model/scooter.dart';

class Body extends StatelessWidget {
  get StaggeredGridView => null;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      itemCount: fruits.length,
      crossAxisCount: 4,
      padding: EdgeInsets.all(20),

      staggeredTileBuilder: (index) =>
          StaggeredTile.count(2, index.isEven ? 3.5 : 3.2),
      mainAxisSpacing: 15.0,
      crossAxisSpacing: 15.0,
    );
  }
}