import 'package:flutter/material.dart';

const colorBackground = Color(0xff2F847C);

class Myapp extends StatelessWidget {
  final Widget page;
  final String pageName;
  Myapp({required this.page, required this.pageName});

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
          title: Text(
            pageName,
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontFamily: 'Montserrat-bold',
            ),
          ),
          backgroundColor: colorBackground,
          elevation: 12,
        ),
        body: page,
      ),
    );
  }
}
