import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Buttons App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorButton(color: Colors.red),
            ColorButton(color: Colors.yellow),
            ColorButton(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final Color color;

  const ColorButton({required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondScreen(color: color),
          ),
        );
      },
      style: ElevatedButton.styleFrom(primary: color),
      child: Text(
        'color button',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Color color;

  const SecondScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color page'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Text(
            'selected color',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
