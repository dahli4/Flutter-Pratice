import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      // 기본화면
      body: TestWidget(),
    ),
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 60,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
