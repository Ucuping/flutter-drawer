import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  final List movieImage = [
    Image.network(
        'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/01/The-Best-Movie-Franchises-To-Binge-Watch.jpg'),
    Image.network(
        'https://cdn.hyprop.co.za/movies/images/5618/5618-1-3-3-1637863988.jpg?w=493.5&webp'),
    Image.network(
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1585167351-51MseeNTNjL.jpg'),
  ];

  final List movieTitle = [
    'Marvels End Game',
    'Spider Man No Way Home',
    'Harry Potter Sorcerer\'s Stone',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return Container(
            margin: EdgeInsets.all(18),
            child: Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: movieImage[index]),
                ListTile(
                    title: Text(
                  movieTitle[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))
              ],
            )));
      },
      itemCount: movieImage.length,
    ));
  }
}
