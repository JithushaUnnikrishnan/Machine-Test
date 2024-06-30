import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/bottom.dart';
import 'package:untitled1/photo.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 249, 218, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,top: 40
              ),
              child: Text(
                "My Cart",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 30),
              child: Container(
                height: 76,
                width: 390,
                child: Card(
                  color: CupertinoColors.white,
                  child: Center(
                    child: ListTile(
                      leading: Image(
                          image: AssetImage(
                              "lib/assets/money-removebg-preview.png")),
                      title: Text("Monstera"),
                      trailing: Icon(CupertinoIcons.delete),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 76,
                width: 390,
                child: Card(
                  color: CupertinoColors.white,
                  child: Center(
                    child: ListTile(
                      leading: Image(
                          image: AssetImage(
                              "lib/assets/pngtree-hand-drawn-noise-illustration-green-potted-plant-green-leaf-design-element-png-image_4058540-removebg-preview 1.png")),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Parlor palm"),
                      ),
                      trailing: Icon(CupertinoIcons.delete),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 46,
                  child: Center(
                      child: Text(
                    "Buy",
                    style: GoogleFonts.poppins(fontSize: 23,
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color.fromRGBO(146, 215, 34, 1)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bottom()));
                  },
                  child: Container(
                    height: 46,
                    child: Center(
                        child: Text(
                      "Home",
                      style: GoogleFonts.poppins(fontSize: 23,
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromRGBO(146, 215, 34, 1)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
