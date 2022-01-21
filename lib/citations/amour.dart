import 'package:flutter/material.dart';
import 'package:mangapad/constant.dart';
import 'list_genre.dart';

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
              Container(
                height: 65,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        child: ContainerWidget(
                            citationText: genreCitation[index][1]),
                      );
                    }),
              ),

              //  seconde list vertically scrollable

              Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                            width: 320,
                            height: 400,
                            child: Column(
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Positioned(
                                      child: Container(
                                        width: 380,
                                        height: 400,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35.0),
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        width: 400,
                                        height: 318,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/shoto.jpeg'),
                                              fit: BoxFit.fitWidth),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 340,
                                      left: 100,
                                      child: Text(
                                        '',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(239, 190, 56, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 34,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ),
                                    Positioned(
                                      top: 97,
                                      left: 1,
                                      child: Container(
                                        width: 320,
                                        height: 57,
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                width: 320,
                                                height: 57,
                                                decoration: const BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment(
                                                        6.123234262925839e-17,
                                                        1),
                                                    end: Alignment(-1,
                                                        6.123234262925839e-17),
                                                    colors: [
                                                      Color.fromRGBO(1, 30, 61,
                                                          0.6499999761581421),
                                                      Color.fromRGBO(
                                                          237,
                                                          205,
                                                          35,
                                                          0.23000000417232513)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
                                              top: 0,
                                              left: 17,
                                              width: 400,
                                              child: Text(
                                                'Avec de l\’entrainement même un raté peu devenir un geni',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 16,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final String citationText;
  const ContainerWidget({required this.citationText});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 80,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {},
        child: Text(
          citationText,
          textAlign: TextAlign.center,
          style: styleText,
        ),
        color: const Color(0xff2F847C),
      ),
    );
  }
}

