import 'package:flutter/material.dart';

class CollectionBox extends StatefulWidget {
  const CollectionBox({Key? key}) : super(key: key);

  @override
  _CollectionBoxState createState() => _CollectionBoxState();
}

class _CollectionBoxState extends State<CollectionBox> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildNav(context, 'Flowers', Colors.white),
          buildNav(context, 'Climbers', Colors.grey),
          buildNav(context, 'Shrubs', Colors.grey),
          buildNav(context, 'Trees', Colors.grey),
        ],
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            buildBigImage(context, "assets/user.jpg"),
            Column(
              children: [
                buildSmallImage(context, "assets/user.jpg"),
                buildSmallImage(context, "assets/user.jpg"),
              ],
            )
          ])
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              buildSmallImage(context, "assets/user.jpg"),
              buildSmallImage(context, "assets/user.jpg"),
            ],
          ),
          Row(
            children: [
              buildBigImage(context, "assets/user.jpg"),
            ],
          )
        ],
      )
    ]);
  }

  @override
  Widget buildNav(BuildContext context, String title, Color color) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 14, 5),
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget buildBigImage(BuildContext context, String imageTitle) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150.0,
      width: 200.0,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageTitle),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    );
  }

  @override
  Widget buildSmallImage(BuildContext context, String imageTitle) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 75.0,
      width: 160.0,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageTitle),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    );
  }
}
