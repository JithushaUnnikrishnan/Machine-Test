import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 249, 218, 1),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 40,),
            Center(child: Image(image: AssetImage('lib/assets/pic.png'),height: 85,width: 105,)),

            Center(
              child: Text(
                "Add Plants",
                style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name", style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none),

                            hintText: "Plant Name",hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 15),filled: true,
                            fillColor: Color.fromRGBO(231, 249, 218, 1)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "About",
                          style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400)
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        minLines: 5,
                        maxLines: 5,
                        decoration: InputDecoration(
                            border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none),

                            hintText: "About",hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 15),filled: true,
                            fillColor:Color(0xFFE7F9DA
                            )),
                      ),
                      SizedBox(height: 10,),
                      Text("Image",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400)),
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none),

                            hintText: "Upload Image",hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 15),filled: true,
                            fillColor: Color.fromRGBO(231, 249, 218, 1)),
                      ),


                      SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Login()));
                        },
                        child: Container(
                          height: 46,
                          width: 290,
                          child: Center(
                              child: Text(
                                "Add",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(146, 215, 34, 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                    ],
                  ),
                ),
                height: 570,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
