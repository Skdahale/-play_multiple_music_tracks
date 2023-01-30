import 'package:flutter/material.dart';
import 'package:play_multiple_music_tracks/Constants.dart';
import 'Yellow.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int music2 = 40;
  int music3 = 60;
  int music4 = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Yellow(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Music 2',
                    style: kMusicText,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black87,
                            trackHeight: 10,
                            inactiveTrackColor: Colors.black87,
                            thumbColor: Colors.black87,
                            overlayColor: Colors.black87,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 16.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: music2.toDouble(),
                            max: 100,
                            min: 20,
                            onChanged: (double newvalue) {
                              setState(() {
                                music2 = newvalue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Music 3',
                    style: kMusicText,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black87,
                            trackHeight: 10,
                            inactiveTrackColor: Colors.black87,
                            thumbColor: Colors.black87,
                            overlayColor: Colors.black87,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 16.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: music3.toDouble(),
                            max: 100,
                            min: 20,
                            onChanged: (double newvalue) {
                              setState(() {
                                music3 = newvalue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Music 4',
                    style: kMusicText,
                  ),
                  SizedBox(
                    width: 23.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black87,
                            trackHeight: 10,
                            inactiveTrackColor: Colors.black87,
                            thumbColor: Colors.black87,
                            overlayColor: Colors.black87,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 16.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: music4.toDouble(),
                            max: 100,
                            min: 20,
                            onChanged: (double newvalue) {
                              setState(() {
                                music4 = newvalue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
