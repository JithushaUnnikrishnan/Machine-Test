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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 60),
              child: Image(image: AssetImage('lib/assets/pic.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 80),
              child: Text(
                "Add Plants",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name", style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),

                              hintText: "Plant Name"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "About",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          minLines: 5,
                          maxLines: 5,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),

                              hintText: "About"),
                        ),
                        SizedBox(height: 20,),
                        Text("Image"),

                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),

                              hintText: "Upload Image"),
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
                            height: 50,
                            width: 400,
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
                  height: 530,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
