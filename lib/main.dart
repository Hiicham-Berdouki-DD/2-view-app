import 'pages/accueil.dart';

import 'pages/contact.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Home(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/contact': (context) => Contact(),
        '/accueil': (context) => Accueil()
      },
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/accueil',
                    arguments: {"text": "Go to Contact page"});
              },
              child: Text('Accueil')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
              child: Text('Contact'))
        ],
      ),
    );
  }
}
