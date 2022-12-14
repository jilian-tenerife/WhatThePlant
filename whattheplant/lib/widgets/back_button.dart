import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whattheplant/main.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 60,
          left: 5,
          child: Container(
            width: 50,
            height: 50,
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }),
                );
              }),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
