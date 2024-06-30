import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 249, 218, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Center(
                child: Image(
              image: AssetImage('lib/assets/pic.png'),
              height: 85,
              width: 105,
            )),
          ),
          Center(
            child: Text(
              "Sign Up",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name", style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.person_2_outlined,
                            color: Colors.green,
                          ),
                          hintText: "Enter Your Name",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mobile Number",
                      style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          hintText: "Enter Your Mobile Number",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.green,
                          ),
                          hintText: "Enter Your Email Id",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1)),
                    ),
                    SizedBox(height: 10),
                    Text("Password",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 15),),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.green,
                          ),
                          hintText: "Enter Your Password",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login()));
                      },
                      child: Container(
                        height: 46,
                        width: 296,
                        child: Center(
                            child: Text(
                          "SignUp",
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
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login()));
                      },
                      child: Text(
                        "Back To Login",
                        style: TextStyle(fontSize: 11),
                      ),
                    ))
                  ],
                ),
              ),
              height: 540,
              width: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
