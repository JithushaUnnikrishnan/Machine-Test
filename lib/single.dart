import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Cart.dart';

class Single extends StatefulWidget {
  const Single({super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 249, 218, 1),
      body:Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 165,top: 50),
                child: Image(image: AssetImage("lib/assets/pine2-removebg-preview.png"),height: 343,width: 389,fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Monstera",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..",
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w400),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "View More",
                      style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(

                      height: 128,
                      width: 186,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(

                      height: 128,
                      width: 186,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                         ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                child: Row(
                  children: [
                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                      child: Container(
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
                    ),
                   SizedBox(width: 10,),
                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                      child: Container(
                        height: 46,
                        child: Center(
                            child: Text(
                              "Cart",
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
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 630,left: 10,
            child: Image(image: AssetImage( "lib/assets/money-removebg-preview.png"),width: 104,height: 114,)),
        Positioned(
            top: 630,
            left: 195,
            child: Image(image: AssetImage("lib/assets/pngtree-hand-drawn-noise-illustration-green-potted-plant-green-leaf-design-element-png-image_4058540-removebg-preview 1.png"),width: 115,height: 109,))
      ],)
    );
  }
}
