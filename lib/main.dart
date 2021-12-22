import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const Welcome());
}

const colorBackground = Color(0xff2F847C);

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MangaPad',
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontFamily: 'Montserrat-bold',
            ),
          ),
          backgroundColor: colorBackground,
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
