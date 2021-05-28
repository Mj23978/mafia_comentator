import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class RolesGrid extends StatelessWidget {
  final int gridCount;
  final int itemCount;
  final Function1<int, Widget> builder;

  const RolesGrid({
    Key? key,
    required this.gridCount,
    required this.itemCount,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // mainAxisExtent: 30.0.y,
        // mainAxisExtent: value,
        childAspectRatio: 3.5,
        // crossAxisCount: countGridTileCount(cs.maxWidth),
        crossAxisCount: gridCount,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
      ),
      // itemCount: controller._cityRoles.value.length,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return builder(index);
      },
    );
  }
}
