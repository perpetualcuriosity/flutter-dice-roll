import 'package:flutter/material.dart';

class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  List<Color> col = [Color(0xff1d4350), Color(0xffa43931)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Roll The Dice!',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        child: Column(
            Image.asset('assets/1.png'),
            
        ),
      ),
    );
  }
}
