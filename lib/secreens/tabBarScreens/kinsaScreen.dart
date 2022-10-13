import 'package:flutter/material.dart';
class KinsaScreen extends StatefulWidget {
  const KinsaScreen({Key? key}) : super(key: key);

  @override
  State<KinsaScreen> createState() => _KinsaScreenState();
}

class _KinsaScreenState extends State<KinsaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}
