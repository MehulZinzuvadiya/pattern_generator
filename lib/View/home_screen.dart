import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _sliderValue = 1;
  String _pattern = '1';

  void _generatePattern(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    setState(() {
      _pattern = pattern;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Pattern Generator"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Slide to generate pattern',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Slider(
            value: _sliderValue,
            min: 1,
            max: 20,
            divisions: 20,
            label: _sliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
            onChangeEnd: _generatePattern,
          ),
          const SizedBox(height: 20),
          Text(
            _pattern,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    ));
  }
}
