import 'package:flutter/material.dart';

import 'package:my_maps/models/map_model.dart';
import 'package:my_maps/views/map_view.dart';

class MyMapList extends StatelessWidget {
  final List<MyMap> myMaps;

  MyMapList({Key? key, required this.myMaps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;

    return ListView.builder(
      itemCount: myMaps.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(myMaps[index].name),
                        subtitle: Text(myMaps[index].name),
                        trailing: Image.network(
                          myMaps[index].mapImage,
                          fit: BoxFit.fitWidth,
                        ),
                        dense: false,
                        titleTextStyle: textTheme.titleLarge,
                        subtitleTextStyle: textTheme.titleMedium,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MapView(
                                        myMap: myMaps[index],
                                      )));
                        },
                      )
                    ],
                  ),
                ))
          ],
        );
      },
    );
  }
}
