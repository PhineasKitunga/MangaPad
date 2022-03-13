import 'package:flutter/material.dart';

class NewAmour3 extends StatelessWidget {
  const NewAmour3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.cyan,
        ),
      ),
    );
  }
}
