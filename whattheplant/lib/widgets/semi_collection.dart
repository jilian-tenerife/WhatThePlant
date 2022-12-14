import 'package:flutter/material.dart';
import 'collections_boxes.dart';

class SemiCollections extends StatefulWidget {
  const SemiCollections({Key? key}) : super(key: key);

  @override
  _SemiCollectionsState createState() => _SemiCollectionsState();
}

class _SemiCollectionsState extends State<SemiCollections> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 365,
          height: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff1C8059),
                  Color(0xcc1C8059),
                  Color(0x99549879),
                  Colors.white.withOpacity(0.0)
                ]),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          child: Center(
            child: DefaultTextStyle(
              style: TextStyle(),
              child: Text(
                'Collections',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Container(
          width: 365,
          height: 340,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1C8059),
                    Color(0xcc1C8059),
                    Color(0x99549879),
                    Colors.white.withOpacity(0.0)
                  ]),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: CollectionBox(),
        )
      ],
    );
  }
}
