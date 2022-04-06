import 'package:flutter/material.dart';

class GaleryPage extends StatelessWidget {
  final List image = [
    Image.network('https://miro.medium.com/max/750/0*0e5IZ0eCW-DNd1go.jpg'),
    Image.network(
        'https://media-exp1.licdn.com/dms/image/C4E1BAQHLEmc7HtQvfA/company-background_10000/0/1603897992830?e=2147483647&v=beta&t=tj_fv00ApdsLeLgL74B_DBEGuGrQtmPx4thmObl90as'),
    Image.network(
        'https://venturebeat.com/wp-content/uploads/2022/01/bugcrowd-logo.jpg?w=1200&strip=all'),
  ];
  final List title = ['Bug Bounty', 'Hackerone', 'Bugcrowd'];
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
                    child: image[index]),
                ListTile(
                    title: Text(
                  title[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))
              ],
            )));
      },
      itemCount: image.length,
    ));
  }
}
