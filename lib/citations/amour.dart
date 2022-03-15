import 'package:flutter/material.dart';
import 'package:mangapad/citations/amour/newAmour1.dart';
import 'package:mangapad/citations/amour/newAmour2.dart';
import 'package:mangapad/citations/amour/newAmour3.dart';
import 'package:mangapad/citations/autres.dart';
import 'package:mangapad/citations/force.dart';
import 'package:mangapad/citations/reve.dart';
import 'package:mangapad/citations/souffrance.dart';
import 'package:mangapad/citations/tristesse.dart';
import 'package:mangapad/citations/vengeance.dart';
import 'package:mangapad/citations/vie.dart';
import 'package:mangapad/constant.dart';
import 'list_genre.dart';
import 'amitie.dart';

class Amour extends StatefulWidget {
  const Amour({Key? key}) : super(key: key);
  @override
  _AmourState createState() => _AmourState();
}

class _AmourState extends State<Amour> {
  final List genreCitation = [
    'Amitie',
    'Amour',
    'Autres',
    'Force',
    'reve',
    'souffrance',
    'tristesse',
    'vengeance',
    'vie',
  ];
  final List fonctionQuote = [
    const Amitie(),
    const Amour(),
    const Autres(),
    const Force(),
    const Reve(),
    const Souffrance(),
    const Tristesse(),
    const Vengeance(),
    const Vie(),
  ];
  final citaion = [
    {
      'image': '',
      'author': '',
      'anime': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 40,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: genreCitation.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: ButtonText(
                            mangaText: genreCitation[index],
                            quote: fonctionQuote[index],
                          ),
                        );
                      }),
                ),
              ),

              //  seconde list vertically scrollable

              Expanded(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    NewAmour1(),
                    NewAmour2(),
                    NewAmour3(),
                  ],
                ),
              ),

              //ad banner vertically

              // Container(
              //   height: 80,
              //   color: Colors.green,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

// class ContainerWidget extends StatelessWidget {
//   final List citationText;
//   const ContainerWidget({required this.citationText});
//   @override
//   Widget build(BuildContext context) {
//     return ButtonTheme(
//       minWidth: 80,
//       height: 50,
//       child: RaisedButton(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         onPressed: () {},
//         child: Text(
//           citationText.toString(),
//           textAlign: TextAlign.center,
//           style: styleText,
//         ),
//         color: const Color(0xff2F847C),
//       ),
//     );
//   }
// }

class ButtonText extends StatelessWidget {
  final String mangaText;
  final Widget quote;
  // ignore: use_key_in_widget_constructors
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
