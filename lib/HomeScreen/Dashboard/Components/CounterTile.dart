import 'package:flutter/material.dart';
import 'package:dashboard/responsive.dart';
import 'package:dashboard/dynamicData/TileData.dart'; //Take in Tiles Data - List
import 'package:dashboard/HomeScreen/Dashboard/Components/Tile.dart'; //Take in Tile Data Object Info

class CounterTiles extends StatelessWidget {
  const CounterTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Column(children: [
      Responsive(
        mobile: TileDisplay(
          crossAxisCount: _size.width < 650 ? 2 : 4,
          childAspectRatio: _size.width < 650 ? 1.3 : 1,
        ),
        tablet: TileDisplay(
          crossAxisCount: _size.width < 900 ? 1 : 5,
          childAspectRatio: _size.width < 900 ? 1.3 : 1,
        ),
        desktop: TileDisplay(
          crossAxisCount: _size.width < 1400 ? 2 : 4,
          childAspectRatio: _size.width < 1400 ? 1.1 : 1.8,
        ),
      ),
    ]);
  }
}

class TileDisplay extends StatelessWidget {
  const TileDisplay({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(bottom: 16),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: tiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => Tile(datum: tiles[index]),
    );
  }
}
