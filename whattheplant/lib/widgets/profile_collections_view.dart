import 'package:flutter/material.dart';
import 'package:whattheplant/screens/collections_screen.dart';
import 'package:whattheplant/screens/profile_screen.dart';

class ProfileCollections extends StatefulWidget {
  const ProfileCollections({Key? key}) : super(key: key);

  @override
  _ProfileCollectionsState createState() => _ProfileCollectionsState();
}

class _ProfileCollectionsState extends State<ProfileCollections> {
  final _controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final pageView = PageView(
      scrollDirection: Axis.vertical,
      controller: _controller,
      children: [
        Profile(),
        Collections(),
      ],
    );
    return Scaffold(body: Stack(children: [pageView]));
  }
}
