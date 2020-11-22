import 'package:flutter/material.dart';

main() {
  runApp(MyMoviesApp());
}

class MyMoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyMoviesApp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Movies List'),
          backgroundColor: Color(0xff885566),
        ),
        body: ListView(
          children: [
            CardsMovie('คนไฟบิน', '5/05/2555'),
            CardsMovie('มังกรพ่นไฟ', '01/02/3456'),
            CardsMovie('ขี่แมวมากินคน', '03/04/7891'),
          ],
        ));
  }
}

class CardsMovie extends StatelessWidget {
  final String movieName;
  final String dateTimeMovie;
  const CardsMovie(
    this.movieName,
    this.dateTimeMovie, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.gamingdose.com/wp-content/uploads/2020/05/fast-and-furious-crossroads.jpg"))),
          ),
          Container(
            alignment: Alignment(1, 0),
            margin: EdgeInsets.all(5),
            child: Text("$movieName",
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Container(
            alignment: Alignment(1, 0),
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                Text("$dateTimeMovie"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
