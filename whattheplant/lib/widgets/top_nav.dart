import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whattheplant/screens/achievements_screen.dart';
import 'package:whattheplant/widgets/profile_collections_view.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 75,
          left: 25,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff127C56).withOpacity(0.5),
            ),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ProfileCollections();
                  }),
                );
              }),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset('assets/profile.png'),
              ),
            ),
          ),
        ),
        Positioned(
          top: 75,
          right: 25,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff127C56).withOpacity(0.5),
            ),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Achievements();
                  }),
                );
              }),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset('assets/badge.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
