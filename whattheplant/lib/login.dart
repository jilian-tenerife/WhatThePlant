import 'package:flutter/material.dart';
import 'package:whattheplant/colors.dart';
import 'package:whattheplant/inbox.dart';
import 'dart:ui';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: btngreen),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                            decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        )),
                      )),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: btngreen),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            )),
                      )),
                ),
                //Not a member? Register now.
                SizedBox(height: 25),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Inbox()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16, fontFamily: 'inter'),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: btngreen,
                        fixedSize: Size(150, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
              ],
            ),
          )),
        ));
  }
}
