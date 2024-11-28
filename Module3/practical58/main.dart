import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Slider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorSliderPage(),
    );
  }
}

class ColorSliderPage extends StatefulWidget {
  @override
  _ColorSliderPageState createState() => _ColorSliderPageState();
}

class _ColorSliderPageState extends State<ColorSliderPage> {
  double _redValue = 0.0;
  double _greenValue = 0.0;
  double _blueValue = 0.0;

  void _updateBackgroundColor() {
    setState(() {
      // Call setState to update UI based on slider values
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RGB Color Slider'),
      ),
      body: Container(
        color: Color.fromRGBO(
          _redValue.round(),
          _greenValue.round(),
          _blueValue.round(),
          1.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Adjust the sliders to change the background color',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Slider(
              value: _redValue,
              min: 0,
              max: 255,
              divisions: 255,
              label: '${_redValue.round()}',
              activeColor: Colors.red,
              onChanged: (double value) {
                setState(() {
                  _redValue = value;
                });
                _updateBackgroundColor();
              },
            ),
            Slider(
              value: _greenValue,
              min: 0,
              max: 255,
              divisions: 255,
              label: '${_greenValue.round()}',
              activeColor: Colors.green,
              onChanged: (double value) {
                setState(() {
                  _greenValue = value;
                });
                _updateBackgroundColor();
              },
            ),
            Slider(
              value: _blueValue,
              min: 0,
              max: 255,
              divisions: 255,
              label: '${_blueValue.round()}',
              activeColor: Colors.blue,
              onChanged: (double value) {
                setState(() {
                  _blueValue = value;
                });
                _updateBackgroundColor();
              },
            ),
          ],
        ),
      ),
    );
  }
}