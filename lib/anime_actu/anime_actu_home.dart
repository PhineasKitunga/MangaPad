import 'package:flutter/material.dart';
import 'package:mangapad/app_and_theme.dart';

class AnimeActu extends StatefulWidget {
  const AnimeActu({Key? key}) : super(key: key);

  @override
  _AnimeActuState createState() => _AnimeActuState();
}

class _AnimeActuState extends State<AnimeActu> {
  @override
  Widget build(BuildContext context) {
    return Myapp(
        page: ListView(
          children: [],
        ),
        pageName: "Anime Actu");
  }
}
