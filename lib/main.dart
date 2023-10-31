import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Maps',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepOrange, brightness: Brightness.dark),
      ),
      home: HomeView(),
    );
  }
}
