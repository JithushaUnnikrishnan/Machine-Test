import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Add.dart';
import 'package:untitled1/single.dart';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(231, 249, 218, 1),
        body: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Image(
                        image: AssetImage("lib/assets/pic.png"),
                        height: 85,
                        width: 105,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 240, left: 50),
                            child: Text(
                              "Monstera",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                          height: 305,
                          width: 186,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 305,
                          width: 186,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 55, top: 240),
                            child: Text(
                              "Pothos",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 305,
                        width: 186,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35, top: 240),
                          child: Text(
                            "Parlor palm",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 305,
                        width: 186,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70, top: 240),
                          child: Text(
                            "Aloe",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Positioned(
                top: 88,
                left: 0,
                child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Single()));},
                  child: Container(
                      height: 276,
                      width: 235,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "lib/assets/pine2-removebg-preview.png",
                              ),
                              fit: BoxFit.cover))),
                )),
            Positioned(
                top: 65,
                left: 230,
                child: Container(
                    height: 305,
                    width: 157,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "lib/assets/money-removebg-preview.png",
                            ),
                            fit: BoxFit.cover)))),
            Positioned(
                top: 420,
                left: 220,
                child: Container(
                    height: 264,
                    width: 174,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "lib/assets/pngtree-hand-drawn-noise-illustration-green-potted-plant-green-leaf-design-element-png-image_4058540-removebg-preview 1.png",
                            ),
                            fit: BoxFit.cover)))),
            Positioned(
                top: 440,
                left: 18,
                child: Container(
                    height: 247,
                    width: 175,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "lib/assets/download-removebg-preview 1.png",
                            ),
                            fit: BoxFit.cover)))),

          ],
        ));
  }
}
