import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whattheplant/widgets/semi_collection.dart';
import '../widgets/back_button.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/wtp_bg.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Back(),
          Positioned(
            left: 15,
            top: 120,
            child: Container(
              width: 555,
              height: 650,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Container(
                            height: 65,
                            width: 65,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/user.jpg"),
                                  fit: BoxFit.scaleDown),
                              color: const Color(0xFFC4C4C4),
                              border: Border.all(
                                color: const Color(0xFFECFF0F),
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultTextStyle(
                                style: TextStyle(),
                                child: Text(
                                  'Garfield Greg V. Lim',
                                  style: TextStyle(
                                      fontSize: 27,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              DefaultTextStyle(
                                style: TextStyle(),
                                child: Text(
                                  'Bio',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                        DefaultTextStyle(
                          style: TextStyle(),
                          child: Text(
                            'Location',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        buildContainer(context, "143", "Plants"),
                        buildContainer(context, "230", "Following"),
                        buildContainer(context, "230", "Followers"),
                      ],
                    ),
                    SemiCollections(),
                  ]),
            ),
          ),
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

  Widget buildContainer(BuildContext context, String title1, String title2) {
    return Container(
      height: 100.0,
      width: 120.0,
      color: Colors.transparent,
      child: Column(children: [
        DefaultTextStyle(
          style: TextStyle(),
          child: Text(
            title1,
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        DefaultTextStyle(
          style: TextStyle(),
          child: Text(
            title2,
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
