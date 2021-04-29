import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice = 1;
  rollDice() {
    setState(() {
      dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: textAppBar(),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: appBarColorGradient(),
          backgroundColor: Colors.white),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTextDice(),
            Divider(
              thickness: 1,
              height: 10,
              color: Colors.amber,
              indent: MediaQuery.of(context).size.width * 0.20,
              endIndent: MediaQuery.of(context).size.width * 0.20,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {
                        rollDice();
                      },
                      child: Image.asset('images/$dice.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text textAppBar() {
    return Text(
      "DSC Al-Azhar",
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Text buildTextDice() {
    return Text(
      "Press The Dise",
      style: TextStyle(
          shadows: [Shadow(color: Colors.yellow, offset: Offset(1, 1))],
          color: Colors.red,
          fontSize: 25,
          fontWeight: FontWeight.w500),
    );
  }

  Container appBarColorGradient() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          gradient: LinearGradient(colors: [
            Colors.yellow[600],
            Colors.red,
          ]),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 4,
            )
          ]),
    );
  }
}
