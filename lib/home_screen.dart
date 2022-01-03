import 'package:flutter/material.dart';
import 'package:mangapad/blind_test/blind_test.dart';
import 'citations/citation_home.dart';
import 'reusable_card_image.dart';
import 'manga_quiz/manga_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: <Widget>[
        // manga quiz
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
        //blind test
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const BlindTestHome();
            }));
          },
          child: const ReusableCard(
            rightImage: AssetImage('assets/images/blindTest.jpeg'),
          ),
        ),

        SizedBox(
          height: 25,
        ),
        // citation
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CitationPage();
            }));
          },
          child: const ReusableCard(
            rightImage: AssetImage('assets/images/citations.jpeg'),
          ),
        ),

        SizedBox(
          height: 25,
        ),
        //manga actu
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
