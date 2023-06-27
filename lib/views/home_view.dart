import 'package:flutter/material.dart';
import 'package:my_maps/views/map_view.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('My Maps'),
          centerTitle: true,
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
        body: Container(
            alignment: Alignment.center,
            color: colorScheme.background,
            child: ElevatedButton(
              child: Text('Go to Map'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapView()),
                );
              },
            )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('add button pressed!');
          },
        ));
  }
}
