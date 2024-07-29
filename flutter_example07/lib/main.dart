import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AppBarExample(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
          surfaceTint: Colors.transparent,
        ),
        appBarTheme: AppBarTheme(
          elevation: 4.0,
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(fontSize: 26, color: Colors.white),
          shadowColor: Colors.deepPurple.withOpacity(0.5),
        ),
      ),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    final isUsingMaterial3 = Theme.of(context).useMaterial3;

    return Scaffold(
      appBar: AppBar(
        title: Text(isUsingMaterial3 ? 'Using Material 3' : 'Using Material 2'),
      ),
      body: const Center(
        child: Text(
          "I love Flutter.",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
