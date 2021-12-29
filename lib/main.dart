import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'constant.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'MangaPad',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontFamily: 'Montserrat-bold',
              ),
            ),
          ),
          backgroundColor: colorBackground,
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
