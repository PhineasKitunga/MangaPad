import 'package:flutter/material.dart';
import 'package:mangapad/app_and_theme.dart';

import '../constant.dart';
import '../niveau.dart';

class MangaQuizPage extends StatefulWidget {
  const MangaQuizPage({Key? key}) : super(key: key);

  @override
  _MangaQuizPageState createState() => _MangaQuizPageState();
}

class _MangaQuizPageState extends State<MangaQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Myapp(
      page: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              height: 3,
            ),
            Text(
              'fait ton Choisi ',
              style: styleHeadings,
            ),
            ButtonText(
              mangaText: 'attack on titan ',
            ),
            ButtonText(
              mangaText: 'Demon Slayer',
            ),
            ButtonText(
              mangaText: 'Black Clover',
            ),
            ButtonText(
              mangaText: 'Bleach ',
            ),
            ButtonText(
              mangaText: 'Hunter x Hunter ',
            ),
            ButtonText(
              mangaText: 'Jujutsu Kaisen',
            ),
            ButtonText(
              mangaText: 'My Hero Academia',
            ),
            ButtonText(
              mangaText: 'Naruto',
            ),
            ButtonText(
              mangaText: 'One piece ',
            ),
            ButtonText(
              mangaText: 'Tokyo Revenger',
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String mangaText;

  const ButtonText({required this.mangaText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const Niveau();
            }),
          );
        },
        color: Color(0xff2F847C),
        child: Text(
          mangaText,
          style: styleText,
        ),
      ),
    );
  }
}
