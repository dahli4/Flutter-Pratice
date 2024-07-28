import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ConstraintsWidget(),
      ),
    );
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Expanded(
            child: Container(
              color: Colors.blue,
              child: Text(
                "Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello "
                "WorldHello WorldHello WorldHello WorldHello World",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
        Flexible(
          child: Expanded(
            child: Container(
                color: Colors.red,
                child: Text(
                  "Hello World",
                  style: TextStyle(fontSize: 30),
                )),
          ),
        ),
      ],
    );
  }
}
