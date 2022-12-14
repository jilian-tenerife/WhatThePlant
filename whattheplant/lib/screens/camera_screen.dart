import 'dart:ui';

import 'package:whattheplant/widgets/top_nav.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whattheplant/colors.dart';
import 'collections_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen(
      {Key? key, required this.cameraController, required this.initCamera})
      : super(key: key);
  final CameraController? cameraController;
  final Future<void> Function({required bool frontCamera}) initCamera;
  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  bool _isFrontCamera = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        (widget.cameraController == null)
            ? Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
              )
            : GestureDetector(
                onDoubleTap: () {
                  _isFrontCamera = !_isFrontCamera;
                  widget.initCamera(frontCamera: _isFrontCamera);
                },
                child: CameraPreview(widget.cameraController!),
              ),
        TopBar(),
        Positioned(
            bottom: 95,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => History()));
                  }),
                  child: Image.asset(
                    'assets/history.png',
                    scale: 1.5,
                  ),
                ),
                Image.asset('assets/snap.png'),
                GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Collections();
                        }),
                      );
                    }),
                    child: Image.asset(
                      'assets/collections.png',
                      scale: 1.3,
                    ))
              ],
            ))
      ],
    );
  }
}

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => history();
}

class history extends State<History> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: btngreen,
      ),
      body: Container(
        color: btngreen,
        child: Column(children: [
          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    message(name: 'Gumamela'),
                    messageii(name: 'Daisy'),
                  ],
                )),
          ),
        ]),
      ));
}

class message extends StatelessWidget {
  final name;
  const message({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: new GestureDetector(
        onTap: () {},
        child: new ClipRect(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade300.withOpacity(0.2)),
              width: 400,
              height: 100,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 25, // Image radius
                    backgroundImage: AssetImage('assets/gumamela.jpg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '$name',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Know more about the plant. Tap here!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class messageii extends StatelessWidget {
  final name;
  const messageii({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: new GestureDetector(
        onTap: () {},
        child: new ClipRect(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade300.withOpacity(0.2)),
              width: 400,
              height: 100,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 25, // Image radius
                    backgroundImage: AssetImage('assets/daisy.jpg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '$name',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Know more about the plant. Tap here!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
