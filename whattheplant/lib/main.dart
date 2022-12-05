import 'package:flutter/material.dart';
import 'package:whattheplant/colors.dart';
import 'dart:ui';

import 'package:whattheplant/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PreLogin(),
    );
  }
}

class PreLogin extends StatefulWidget {
  const PreLogin({Key? key}) : super(key: key);

  @override
  State<PreLogin> createState() => _PreLogin();
}

class _PreLogin extends State<PreLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/wtp_bg.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/wtp_png.png",
                      color: Colors.black.withOpacity(0.2),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 2.5,
                        sigmaY: 2.5,
                      ),
                      child: Image.asset(
                        "assets/wtp_png.png", /*
                        color: btngreen,*/
                      ),
                    )
                  ],
                ),
                Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/wtp_icon.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12),
                    )),
                const SizedBox(height: 25),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook_rounded,
                      size: 24.0,
                    ),
                    label: Text(
                      'Continue with Facebook',
                      style: TextStyle(fontSize: 16, fontFamily: 'inter'),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: btngreen,
                        fixedSize: Size(300, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                const SizedBox(height: 25),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "I'll use e-mail or phone",
                      style: TextStyle(fontSize: 16, fontFamily: 'inter'),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: btngreen,
                        fixedSize: Size(300, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                //Not a member? Register now.
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(' Login here',
                        style: TextStyle(
                          color: btngreen,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
          )),
        ));
  }
}
