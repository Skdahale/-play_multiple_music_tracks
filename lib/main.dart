import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() => runApp(MusicTrack());

class MusicTrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.fallback().copyWith(
        // primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: InputPage(),
    );
  }
}
