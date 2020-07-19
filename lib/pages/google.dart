import 'package:flutter/material.dart';

class PageGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                //color: Colors.green,
                child: Image.asset(
                  'assets/img/google.png',
                  width: 50,
                  height: 50,
                ),
              ),            
            ),
            Text('Google')
          ]
        )
      ),
    );
  }
}