import 'package:flutter/material.dart';
import 'package:mangapad/constant.dart';
import 'package:mangapad/niveau.dart';

import '../app_and_theme.dart';

class CitationPage extends StatelessWidget {
  const CitationPage({Key? key}) : super(key: key);

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
              mangaText: 'Amour ',
            ),
            ButtonText(
              mangaText: 'rêve',
            ),
            ButtonText(
              mangaText: 'Souffrance',
            ),
            ButtonText(
              mangaText: 'Vie ',
            ),
            ButtonText(
              mangaText: 'Amitié',
            ),
            ButtonText(
              mangaText: 'Vengeance',
            ),
            ButtonText(
              mangaText: 'Tristesse',
            ),
            ButtonText(
              mangaText: 'Force',
            ),
            ButtonText(
              mangaText: 'Autres',
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
    return RaisedButton(
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
      color: const Color(0xff2F847C),
      child: Text(
        mangaText,
        style: styleText,
      ),
    );
  }
}
