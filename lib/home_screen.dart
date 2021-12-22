import 'package:flutter/material.dart';
import 'reusable_card_image.dart';
import 'manga_quiz/manga_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const MangaQuizPage();
            }));
          },
          child: const ReusableCard(
            rightImage: AssetImage('assets/images/mangaQuiz.jpeg'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {},
          child: const ReusableCard(
            rightImage: AssetImage('assets/images/blindTest.jpeg'),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        GestureDetector(
          onTap: () {},
          child: const ReusableCard(
            rightImage: AssetImage('assets/images/citations.jpeg'),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        GestureDetector(
          onTap: () {},
          child: const ReusableCard(
            rightImage: AssetImage('assets/images/animeActu.jpeg'),
          ),
        ),
      ],
    );
  }
}
