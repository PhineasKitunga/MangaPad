import 'package:flutter/material.dart';
import 'package:mangapad/constant.dart';
import 'package:mangapad/app_and_theme.dart';

class Amour extends StatefulWidget {
  const Amour({Key? key}) : super(key: key);

  @override
  _AmourState createState() => _AmourState();
}

class _AmourState extends State<Amour> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child:
              //list view
              SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 100,
                      margin: EdgeInsets.all(10),
                      width: 100,
                      child: Center(
                        child: Text("Card $index"),
                      ),
                      color: Colors.green,
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) => ListTile(
                      title: Text("List $index"),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
