import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 249, 218, 1),
      body: Container(
        child: Center(child: Text("Profile",style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w500),)),
      ),
    );
  }
}
