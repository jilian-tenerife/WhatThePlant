import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 814,
            color: const Color(0xFFD77A8F),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    width: 411,
                    height: 100,
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA96E80),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/profile.png"),
                              fit: BoxFit.cover),
                          color: const Color(0xFF6181BE),
                          border: Border.all(
                            color: const Color(0xFFEB9EB2),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Text(
                        " Usagi Chat",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFFEFAEBA),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFA96E80)),
                        child:
                            const Image(image: AssetImage("assets/logout.png")),
                      ),
                    ]),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Container(
                width: 390,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFA96E80),
                  border: Border.all(
                    color: const Color(0xFFEB9EB2),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: TextField(
                  style: GoogleFonts.farro(
                    color: const Color(0xFFF5CEDB),
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFFF5CEDB),
                    ),
                    border: InputBorder.none,
                    hintText: " Search",
                    hintStyle: TextStyle(color: Color(0xFFF5CEDB)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/profile3.jpg"),
                          fit: BoxFit.cover),
                      color: const Color(0xFF6181BE),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/profile1.jpg"),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/profile2.jpg"),
                          fit: BoxFit.cover),
                      color: const Color(0xFF6181BE),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Darin Dupont",
                    style: GoogleFonts.farro(
                      color: const Color(0xFFF5CEDB),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Yousaf Stuart",
                    style: GoogleFonts.farro(
                      color: const Color(0xFFF5CEDB),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Arjun Hussain",
                    style: GoogleFonts.farro(
                      color: const Color(0xFFF5CEDB),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: 400,
                decoration: BoxDecoration(
                  color: const Color(0xFF6181BE),
                  border: Border.all(
                    color: const Color(0xFFEB9EB2),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/profile4.jpg"),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Text(
                    "Hayden Nunez",
                    style: GoogleFonts.farro(
                      color: const Color(0xFFF5CEDB),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 58),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/message.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: 400,
                decoration: BoxDecoration(
                  color: const Color(0xFF6181BE),
                  border: Border.all(
                    color: const Color(0xFFEB9EB2),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/profile1.jpg"),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Text(
                    "Yousaf Stuart",
                    style: GoogleFonts.farro(
                      color: const Color(0xFFF5CEDB),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 60),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/message.png"),
                          fit: BoxFit.cover),
                    ),
                  )
                ]),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: 400,
                decoration: BoxDecoration(
                  color: const Color(0xFF6181BE),
                  border: Border.all(
                    color: const Color(0xFFEB9EB2),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/profile2.jpg"),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Text(
                    "Arjun Hussain",
                    style: GoogleFonts.farro(
                      color: const Color(0xFFF5CEDB),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 65),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/message.png"),
                          fit: BoxFit.cover),
                    ),
                  )
                ]),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: 400,
                decoration: BoxDecoration(
                  color: const Color(0xFF6181BE),
                  border: Border.all(
                    color: const Color(0xFFEB9EB2),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/profile3.jpg"),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: const Color(0xFFEB9EB2),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Text(
                    "Darin Dupont",
                    style: GoogleFonts.farro(
                      color: const Color(0xFFF5CEDB),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 70),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/message.png"),
                          fit: BoxFit.cover),
                    ),
                  )
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
