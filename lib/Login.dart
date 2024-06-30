import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/bottom.dart';
import 'package:untitled1/photo.dart';
import 'package:untitled1/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(231, 249, 218, 1),

        body: Stack(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'lib/assets/pngtree-green-halo-glow-light-effect-blur-background-image_556769 1.png'),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Welcome to Green Hub",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "LOGIN",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
                  child: Container(
                    height: 404,
                    width: 329,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50, horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(7),borderSide: BorderSide.none),
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.green,
                                ),
                                hintText: "Enter your Email Id",
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                                filled: true,fillColor: Color.fromRGBO(231, 249, 218, 1)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Password",
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(7),borderSide: BorderSide.none),
                                prefixIcon: Icon(
                                  CupertinoIcons.lock,
                                  color: Colors.green,
                                ),
                                hintText: "Enter Your Password",
                                fillColor:  Color(0xFFE7F9DA),
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),filled: true,),
                          ),
                          SizedBox(height: 50),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bottom()));
                            },
                            child: Center(
                              child: Container(
                                height: 46,
                                width: 296,
                                child: Center(
                                    child: Text(
                                  "LOGIN",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )),
                                decoration: BoxDecoration(
                                    color: Color(0xFF92D722),
                                    borderRadius: BorderRadius.circular(9)),
                              ),
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
                                            builder: (context) => Signup()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Create New Account?",
                                          style: GoogleFonts.poppins(fontSize: 11),
                                        ),
                                        Text("Signup",style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.blue),)
                                      ],
                                    ),
                                  )))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                left: 45,
                top: 15,
                child: Image(image: AssetImage("lib/assets/pic.png")))
          ],
        ));
  }
}
