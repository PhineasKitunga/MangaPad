import 'package:flutter/material.dart';
import 'package:mangapad/citations/amitie.dart';
import 'package:mangapad/citations/autres.dart';
import 'package:mangapad/citations/force.dart';
import 'package:mangapad/citations/reve.dart';
import 'package:mangapad/citations/souffrance.dart';
import 'package:mangapad/citations/tristesse.dart';
import 'package:mangapad/citations/vengeance.dart';
import 'package:mangapad/citations/vie.dart';
import 'package:mangapad/constant.dart';
import 'package:mangapad/niveau.dart';
import 'amour.dart';

import '../app_and_theme.dart';

class CitationPage extends StatelessWidget {
  const CitationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Myapp(
      pageName: 'Citations',
      page: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Fait ton Choisi ',
                  style: styleHeadings,
                ),
                ButtonText(
                  mangaText: 'Amour ',
                  quote: Amour(),
                ),
                ButtonText(
                  mangaText: 'rêve',
                  quote: Reve(),
                ),
                ButtonText(
                  mangaText: 'Souffrance',
                  quote: Souffrance(),
                ),
                ButtonText(
                  mangaText: 'Vie ',
                  quote: Vie(),
                ),
                ButtonText(
                  mangaText: 'Amitié',
                  quote: Amitie(),
                ),
                ButtonText(
                  mangaText: 'Vengeance',
                  quote: Vengeance(),
                ),
                ButtonText(
                  mangaText: 'Tristesse',
                  quote: Tristesse(),
                ),
                ButtonText(
                  mangaText: 'Force',
                  quote: Force(),
                ),
                ButtonText(
                  mangaText: 'Autres',
                  quote: Autres(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String mangaText;
  final Widget quote;
  const ButtonText({required this.mangaText, required this.quote});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 150,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return quote;
            }),
          );
        },
        color: const Color(0xff2F847C),
        child: Text(
          mangaText,
          style: styleText,
        ),
      ),
    );
  }
}
