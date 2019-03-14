import 'package:flutter/material.dart';

import './product.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  String _asset = 'assets/images/chill_view.jpg';
  int i = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('View'),
        ),
        body: Column(
          children: <Widget>[
            ProductView(1, _asset),
            RaisedButton(
              child: Text('next'),
              onPressed: () {
                i = (i + 1) % 2;
                if (i == 0) {
                  setState(() {
                    _asset = 'assets/images/chill_view.jpg';
                  });
                } else {
                  setState(() {
                    _asset = 'assets/images/omlet.jpg';
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
