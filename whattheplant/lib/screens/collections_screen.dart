import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whattheplant/widgets/back_button.dart';
import '../widgets/collections_boxes.dart';

class Collections extends StatefulWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/wtp_bg.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 62,
            child: Column(
              children: [
                Container(
                  width: 400,
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
                  width: 400,
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
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: CollectionBox(),
                )
              ],
            ),
          ),
          Back(),
          Padding(
            padding: EdgeInsets.all(90.0),
            child: Align(
              alignment: Alignment(0.0, 1.2),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: BottomNavigationBar(
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white,
                    backgroundColor: Color(0xffEAB64D).withOpacity(0.5),
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.chat_bubble),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.device_phone_portrait),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.settings_solid), label: ''),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
