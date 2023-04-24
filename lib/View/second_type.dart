import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double range = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Change with Slider",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Slider(
                min: 0,
                max: 20,
                label: "${range.toInt()}",
                divisions: 20,
                value: range,
                onChanged: (v) {
                  setState(() {
                    range = v;
                  });
                },
              ),
              Column(
                children: [
                  for (int i = 1; i <= range; i++)
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        for (int j = 1; j <= i; j++) Text("$j  "),
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
