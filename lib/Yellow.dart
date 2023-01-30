import 'package:flutter/material.dart';
import 'Constants.dart';

class Yellow extends StatefulWidget {
  @override
  _YellowState createState() => _YellowState();
}

class _YellowState extends State<Yellow> {
  int slide = 80;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Music 1',
                style: kMusic1Text,
              ),
              SizedBox(
                width: 100.0,
              ),
              Icon(
                Icons.play_circle,
                size: 90.0,
              ),
              SizedBox(
                width: 100,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.black87,
                        trackHeight: 10,
                        inactiveTrackColor: Colors.black87,
                        thumbColor: Colors.black87,
                        overlayColor: Colors.black87,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 14.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: slide.toDouble(),
                        max: 100,
                        min: 20,
                        onChanged: (double newvalue) {
                          setState(() {
                            slide = newvalue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          color: Colors.yellow[600],
          margin: EdgeInsets.only(top: 0),
          padding: EdgeInsets.only(top: 0),
          width: double.infinity,
          height: 400,
        ),
      ],
    );
  }
}
