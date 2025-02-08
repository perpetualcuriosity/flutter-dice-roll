import 'package:flutter/material.dart';
import 'package:flutter_dice_roll/random_number_generator.dart';

class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  List<Color> col = [Color(0xff780206), Color(0xff061161)];
  String path = 'lib/assets/1.png';
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(path,height: 300,width: 300),
              SizedBox(height: 10),
              OutlinedButton(onPressed: () {
                setState(() {
                  path = 'lib/assets/${randomNumberGenerator()}.png';
                });
              }, child: Text('Roll!',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
