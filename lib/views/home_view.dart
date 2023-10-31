import 'package:flutter/material.dart';

import 'package:my_maps/components/map_list.dart';
import 'package:my_maps/data/map_data.dart';
import 'package:my_maps/views/add_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('My Maps'),
          centerTitle: true,
          backgroundColor: colorScheme.primaryContainer,
          foregroundColor: colorScheme.onPrimaryContainer,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 10.0),
          child: MyMapList(
            myMaps: myMaps,
          ),
        ),
        floatingActionButton: _AddFab());
  }
}

class _AddFab extends StatelessWidget {
  const _AddFab();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddView()));
      },
      child: Icon(Icons.add),
    );
  }
}
