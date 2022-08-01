import 'package:flutter/material.dart';
import 'package:seccion6_fluttercourse/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
          min: 100,
          max: 400,
          activeColor: AppTheme.primary,
          // divisions: 50,
          value: _sliderValue,
          onChanged: _sliderEnabled
              ? (value) {
                  _sliderValue = value;
                  print(value);
                  setState(() {});
                }
              : null,
        ),
        Checkbox(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),
        Switch(
          activeColor: AppTheme.primary,
          value: _sliderEnabled,
          onChanged: (value) {
            _sliderEnabled = value;
            setState(() {});
          },
        ),
        CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),
        SwitchListTile.adaptive(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnabled,
          onChanged: (value) {
            _sliderEnabled = value;
            setState(() {});
          },
        ),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: const NetworkImage(
                      'https://i.pinimg.com/originals/f3/02/39/f30239879c7a9eeda4d75152f72cf62b.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
