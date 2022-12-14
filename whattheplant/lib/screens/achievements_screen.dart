// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whattheplant/widgets/back_button.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
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
            top: 45,
            child: Center(
              child: Container(
                width: 400,
                height: 80,
                child: Center(
                  child: DefaultTextStyle(
                    style: TextStyle(),
                    child: Text(
                      'Achievements',
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 10,
            child: Column(children: [
              buildAchievements(
                  context,
                  'assets/3_star_badge.png',
                  'Gumamela Enthusiast',
                  'Scan 10 Different Types',
                  'of Gumamelas',
                  'assets/full_bar.png'),
              SizedBox(
                height: 50,
              ),
              buildAchievements(
                  context,
                  'assets/1_star_badge.png',
                  'New Plantito/Plantita',
                  'Scan 15 Different Kinds',
                  'of Plants in a Day',
                  'assets/partial_bar.png'),
              SizedBox(
                height: 50,
              ),
              buildAchievements(
                  context,
                  'assets/0_star_badge.png',
                  'Anthophile',
                  'Scan a Rafflesia Banaona',
                  '',
                  'assets/empty_bar.png'),
            ]),
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

  @override
  Widget buildAchievements(
      BuildContext context,
      String badge,
      String achievement,
      String description1,
      String description2,
      String bar) {
    return Row(children: [
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(badge),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Row(children: [
        Column(
          children: [
            DefaultTextStyle(
              style: TextStyle(),
              child: Text(
                achievement,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DefaultTextStyle(
              style: TextStyle(),
              child: Text(
                description1,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DefaultTextStyle(
              style: TextStyle(),
              child: Text(
                description2,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bar),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ]),
    ]);
  }
}
