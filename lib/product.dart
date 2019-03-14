import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final int param;
  final String assetpath;

  ProductView(this.param, this.assetpath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(assetpath),
          Container(
            child: Text('Test'),
          )
        ],
      ),
    );
  }
}
