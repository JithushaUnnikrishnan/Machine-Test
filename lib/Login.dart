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
      backgroundColor: Colors.grey.shade100,
      // appBar: AppBar(
      //   title: Image.asset('lib/assets/ll.jpeg',fit: BoxFit.contain,),
      //   toolbarHeight: 246,
      //
      // ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/ll.jpeg'), fit: BoxFit.fill)),
          ),
          Text(
            "Welcome to Green Hub",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text(
            "LOGIN",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.height * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.green,
                          ),
                          hintText: "Enter your Email Id"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Password"),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            CupertinoIcons.lock,
                            color: Colors.green,
                          ),
                          hintText: "Enter Your Password"),
                    ),
                    SizedBox(height: 50),
                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Photo()));},
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Center(
                            child: Text(
                          "LOGIN",
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
                    SizedBox(height: 10,),
                    Center(child: InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));},
                        child: Text("Create New Account? Signup",style: GoogleFonts.poppins(fontSize: 11),)))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
