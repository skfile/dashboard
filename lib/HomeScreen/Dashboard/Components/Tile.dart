import 'package:flutter/material.dart';
import 'package:dashboard/dynamicData/TileData.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key, required this.datum}) : super(key: key);

  final TileData datum;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: datum.colorName,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(4),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: datum.colorName!.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: datum.icon),
              Text("${datum.counter} ${datum.tallyName}",
                  style: Theme.of(context).textTheme.headline6!),
              // Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),
          Text(
            datum.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("View Details", style: Theme.of(context).textTheme.caption!),
            ],
          )
        ],
      ),
    );
  }
}
