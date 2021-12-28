import 'package:flutter/material.dart';
import 'package:mangapad/app_and_theme.dart';
import 'constant.dart';
import 'package:mangapad/manga_quiz/manga_home.dart';

class Niveau extends StatefulWidget {
  const Niveau({Key? key}) : super(key: key);

  @override
  _NiveauState createState() => _NiveauState();
}

class _NiveauState extends State<Niveau> {
  @override
  Widget build(BuildContext context) {
    return Myapp(
      page: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Choisi ton niveau ',
              style: styleHeadings,
            ),
            SizedBox(
              height: 30,
            ),
            ButtonText(
              mangaText: 'Facile',
            ),
            SizedBox(
              height: 30,
            ),
            ButtonText(
              mangaText: 'Moyen',
            ),
            SizedBox(
              height: 30,
            ),
            ButtonText(
              mangaText: 'Difficile',
            ),
          ],
        ),
      ),
    );
  }
}
