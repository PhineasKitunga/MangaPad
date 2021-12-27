import 'package:flutter/material.dart';

const colorBackground = Color(0xff2F847C);

class Myapp extends StatelessWidget {
  final Widget page;
  Myapp({required this.page});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
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
        body: page,
      ),
    );
  }
}
