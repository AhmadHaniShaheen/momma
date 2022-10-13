import 'package:flutter/material.dart';
class MensScreen extends StatefulWidget {
  const MensScreen({Key? key}) : super(key: key);

  @override
  State<MensScreen> createState() => _MensScreenState();
}

class _MensScreenState extends State<MensScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
