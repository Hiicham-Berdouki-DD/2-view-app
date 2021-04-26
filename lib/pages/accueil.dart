import 'package:app_2_views/pages/contact.dart';
import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: ElevatedButton(
        child: Text(data['text']),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contact()),
          );
        },
      ),
    );
  }
}
