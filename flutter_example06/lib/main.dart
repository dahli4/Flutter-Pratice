import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Stateless vs Stateful'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExampleStateless(),
      ExampleStateful(index: 3),
    ]);
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textEditingController = textEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }

            _index++;
          });
        },
        child: Container(
          color: Colors.red.withOpacity(_index / 5),
          child: Center(child: Text('$_index')),
        ),
      ),
    );
  }
}
